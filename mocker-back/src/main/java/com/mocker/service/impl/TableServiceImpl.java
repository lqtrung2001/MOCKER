package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.exception.PermissionException;
import com.mocker.domain.model.entity.Field;
import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.Option;
import com.mocker.domain.model.entity.Table;
import com.mocker.domain.model.entity.User;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.repository.FieldRepository;
import com.mocker.repository.GroupMemberRepository;
import com.mocker.repository.GroupRepository;
import com.mocker.repository.OptionRepository;
import com.mocker.repository.TableRelationRepository;
import com.mocker.repository.TableRepository;
import com.mocker.service.TableService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.Collection;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class TableServiceImpl implements TableService {
    private final TableRepository tableRepository;
    private final FieldRepository fieldRepository;
    private final OptionRepository optionRepository;
    private final TableRelationRepository tableRelationRepository;
    private final ApplicationContextHolder applicationContextHolder;
    private final GroupRepository groupRepository;
    private final GroupMemberRepository groupMemberRepository;


    @Override
    public Table getTable(UUID id) {
        checkCurrentUserInTable(id, null);
        return Optional.ofNullable(tableRepository.findOneFetchFields(id))
                .orElseThrow(() -> new NotFoundException(id));
    }

    @Override
    public List<Table> getTablesBySchema(UUID schemaId) {

        return Optional.ofNullable(tableRepository.findAllBySchemaFetchFields(schemaId))
                .orElseThrow(() -> new NotFoundException(schemaId));
    }

    @Override
    public Table upsert(Table table) {
        checkCurrentUserInTable(table.getId(), table.getSchema().getProject().getGroup().getId());
        checkRoleInTable(table.getId(), table.getSchema().getProject().getGroup().getId());
        if (table.getId() != null) {
            List<UUID> ids = table.getFields().stream().map(Field::getId).toList();
            List<UUID> fieldIdsNeedToRemove = tableRepository.findOneFetchFields(table.getId())
                    .getFields()
                    .stream()
                    .map(Field::getId)
                    .filter(id -> !ids.contains(id))
                    .toList();
            optionRepository.deleteAll(optionRepository.findAllByFieldIds(fieldIdsNeedToRemove));
            fieldRepository.deleteAllById(fieldIdsNeedToRemove);
        }
        List<Field> fields = table.getFields();
        table.setFields(null);
        Table save = tableRepository.save(table);
        if (!CollectionUtils.isEmpty(fields)) {
            fields.forEach(item -> {
                Option option = item.getOption();
                optionRepository.save(option
                        .toBuilder()
                        .field(fieldRepository.save(item.toBuilder()
                                .table(save)
                                .option(null)
                                .build()))
                        .build());
            });
        }
        return tableRepository.findOneFetchFields(save.getId());
    }

    @Override
    public Table delete(UUID id) {
        checkRoleInTable(id, null);
        Table table = Optional.ofNullable(tableRepository.findOneFetchFields(id)).orElseThrow(() -> new NotFoundException(id));
        optionRepository.deleteAll(table.getFields()
                .stream()
                .map(Field::getOption)
                .toList());
        tableRelationRepository.deleteAll(table.getFields()
                .stream()
                .map(tableRelationRepository::findSourceAndTargetRelationsByField)
                .flatMap(Collection::stream)
                .toList());
        fieldRepository.deleteAll(table.getFields());
        tableRepository.deleteById(id);
        return table;
    }

    private void checkCurrentUserInTable(UUID tableId, UUID groupId) {
        UUID auth = applicationContextHolder.getCurrentUser().getId();
        if (tableId != null) {
            Group group = groupRepository.getGroupByTableId(tableId);
            List<GroupMember> groupMembers = groupMemberRepository.findAllByGroup(group);
            boolean contains = groupMembers.stream().map(GroupMember::getUser)
                    .map(User::getId)
                    .toList()
                    .contains(auth);
            if (!contains) {
                throw new PermissionException("You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.");
            }
        } else {
            Role roleUserInGroup = groupRepository.getRoleUserInGroup(groupId, auth);
            if (roleUserInGroup.equals(Role.USER)) {
                throw new PermissionException("You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.");
            }
        }
    }

    private void checkRoleInTable(UUID tableId, UUID groupId) {
        UUID auth = applicationContextHolder.getCurrentUser().getId();
        Role roleUserInGroup = (tableId != null)
                ? groupRepository.getRoleUserInGroup(groupRepository.getGroupByTableId(tableId).getId(), auth)
                : groupRepository.getRoleUserInGroup(groupId, auth);
        if (roleUserInGroup.equals(Role.USER)) {
            throw new PermissionException("You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.");
        }
    }
}
