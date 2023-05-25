package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.exception.PermissionException;
import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.Table;
import com.mocker.domain.model.entity.TableRelation;
import com.mocker.domain.model.entity.User;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.repository.GroupMemberRepository;
import com.mocker.repository.GroupRepository;
import com.mocker.repository.ProjectRepository;
import com.mocker.repository.SchemaRepository;
import com.mocker.repository.TableRepository;
import com.mocker.repository.UserRepository;
import com.mocker.service.SchemaService;
import com.mocker.service.TableService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Service
@Transactional
@RequiredArgsConstructor
public class SchemaServiceImpl implements SchemaService {

    private final SchemaRepository schemaRepository;
    private final TableService tableService;
    private final TableRepository tableRepository;
    private final ApplicationContextHolder applicationContextHolder;
    private final GroupRepository groupRepository;
    private final GroupMemberRepository groupMemberRepository;
    private final UserRepository userRepository;
    private final ProjectRepository projectRepository;


    @Override
    public List<Schema> getSchemasByProject(UUID projectId) {
        return Optional.ofNullable(schemaRepository.getSchemasByProject(projectId))
                .orElseThrow(() -> new NotFoundException(projectId));
    }

    @Override
    public Schema upsert(Schema schema) {
        checkCurrentUserInSchema(schema.getId(), schema.getProject().getGroup().getId());
        checkRoleInSchema(schema.getId(),  schema.getProject().getGroup().getId());
        return Optional.of(schemaRepository.save(schema))
                .orElseThrow(() -> new NotFoundException(schema.getId()));
    }

    @Override
    public Schema getSchema(UUID id) {
        checkCurrentUserInSchema(id, null);
        return Optional.ofNullable(schemaRepository.getSchema(id))
                .orElseThrow(() -> new NotFoundException(id));
    }

    @Override
    public List<Schema> getSchemas() {
        UUID auth = applicationContextHolder.getCurrentUser().getId();
        List<Schema> schemas = schemaRepository.getSchemas(auth);
        Set<UUID> groupIds = userRepository.findAllGroupIds(auth);
        groupIds.forEach(groupId -> {
            Group group = groupRepository.findById(groupId).orElseThrow(() -> new NotFoundException(groupId));
            List<GroupMember> groupMembers = groupMemberRepository.findAllByGroup(group);
            boolean contains = groupMembers.stream().map(GroupMember::getUser)
                    .map(User::getId)
                    .toList()
                    .contains(applicationContextHolder.getCurrentUser().getId());
            if (!contains) {
                List<Project> projects = projectRepository.findAllByGroup(groupRepository.findById(groupId).orElseThrow(() -> new NotFoundException(groupId)));
                projects.forEach(project -> schemas.removeAll(schemaRepository.getSchemasByProject(project.getId())));
            }
        });
        return schemas;
    }

    @Override
    public List<Table> getTablesBySchema(UUID schemaId) {
        checkCurrentUserInSchema(schemaId, null);
        return Optional.ofNullable(tableRepository.findAllBySchemaFetchFields(schemaId))
                .orElseThrow(() -> new NotFoundException(schemaId));
    }

    @Override
    public List<TableRelation> getTableRelationsBySchema(UUID schemaId) {
        checkCurrentUserInSchema(schemaId, null);
        return Optional.ofNullable(schemaRepository.getTableRelationsBySchema(schemaId))
                .orElseThrow(() -> new NotFoundException(schemaId));
    }

    @Override
    public Schema delete(UUID id) {
        checkRoleInSchema(id, null);
        Schema schema = Optional
                .ofNullable(schemaRepository.getSchema(id))
                .orElseThrow(() -> new NotFoundException(id));
        tableService.getTablesBySchema(id)
                .stream()
                .map(Table::getId)
                .forEach(tableService::delete);
        schemaRepository.deleteById(id);
        return schema;
    }

    private void checkCurrentUserInSchema(UUID schemaId, UUID groupId) {
        UUID auth = applicationContextHolder.getCurrentUser().getId();
        if (schemaId != null) {
            Group group = groupRepository.getGroupBySchemaId(schemaId);
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

    private void checkRoleInSchema(UUID schemaId, UUID groupId) {
        UUID auth = applicationContextHolder.getCurrentUser().getId();
        Role roleUserInGroup = (schemaId != null)
                ? groupRepository.getRoleUserInGroup(groupRepository.getGroupBySchemaId(schemaId).getId(), auth)
                : groupRepository.getRoleUserInGroup(groupId, auth);
        if (roleUserInGroup.equals(Role.USER)) {
            throw new PermissionException("You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.");
        }
    }
}
