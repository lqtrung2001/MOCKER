package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.exception.BadRequestException;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.model.entity.Field;
import com.mocker.domain.model.entity.Option;
import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.Table;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.repository.*;
import com.mocker.service.PermissionService;
import com.mocker.service.TableService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.*;

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
    private final PermissionService permissionService;

    @Override
    public Table getTable(UUID id) {
        permissionService.checkPermission(id, Table.class);
        return tableRepository.findOneFetchFields(id);
    }

    @Override
    public List<Table> getTablesBySchema(UUID schemaId) {
        permissionService.checkPermission(schemaId, Schema.class);
        return tableRepository.findAllBySchemaFetchFields(schemaId);
    }

    @Override
    public Table upsert(Table table) {
        permissionService.checkPermission(
                table.getSchema().getId(),
                Schema.class,
                List.of(Role.GROUP_ADMIN, Role.GROUP_ASSOCIATE),
                "You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.");
        Table existingTableName = tableRepository.findOneByNameAndSchemaId(table.getName(), table.getSchema().getId());
        if (Objects.nonNull(existingTableName)) {
            if (Objects.isNull(table.getId())) {
                // Create a new table
                throw new BadRequestException("The table with name " + table.getName() + " is already existed, please create with the different table name");
            } else if (!Objects.equals(existingTableName.getId(), table.getId())) {
                throw new BadRequestException("The table with name " + table.getName() + "is already existed, please update it with the different table name");
            }
        }
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
        permissionService.checkPermission(
                id,
                Table.class,
                List.of(Role.GROUP_ADMIN, Role.GROUP_ASSOCIATE),
                "You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.");
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

}
