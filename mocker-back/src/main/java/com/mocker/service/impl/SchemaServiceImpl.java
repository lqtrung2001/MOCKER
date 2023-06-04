package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.exception.BadRequestException;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.Table;
import com.mocker.domain.model.entity.TableRelation;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.repository.SchemaRepository;
import com.mocker.repository.TableRepository;
import com.mocker.service.PermissionService;
import com.mocker.service.SchemaService;
import com.mocker.service.TableService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Objects;
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
    private final PermissionService permissionService;

    @Override
    public List<Schema> getSchemasByProjectId(UUID projectId, List<Role> roles) {
        permissionService.checkPermission(projectId, Project.class);
        UUID authId = applicationContextHolder.getCurrentUser().getId();
        return schemaRepository.getSchemasByProjectId(authId, projectId, roles);
    }

    @Override
    public Schema upsert(Schema schema) {
        permissionService.checkPermission(
                schema.getProject().getId(),
                Project.class,
                List.of(Role.GROUP_ADMIN, Role.GROUP_ASSOCIATE),
                "You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.");
        Schema existingSchemaName = schemaRepository.findOneByNameAndProjectId(schema.getName(), schema.getProject().getId());
        if (Objects.nonNull(existingSchemaName)) {
            if (Objects.isNull(schema.getId())) {
                // Create a new schema
                throw new BadRequestException("The schema with name " + schema.getName() + " is already existed, please create with the different schema name");
            } else if (!Objects.equals(existingSchemaName.getId(), schema.getId())) {
                throw new BadRequestException("The schema with name " + schema.getName() + "is already existed, please update it with the different schema name");
            }
        }
        return schemaRepository.save(schema);
    }

    @Override
    public Schema getSchema(UUID id) {
        permissionService.checkPermission(id, Schema.class);
        return schemaRepository.getSchema(id);
    }

    @Override
    public List<Schema> getSchemas(List<Role> roles) {
        UUID auth = applicationContextHolder.getCurrentUser().getId();
        return schemaRepository.getSchemas(auth, roles);
    }

    @Override
    public List<Table> getTablesBySchema(UUID schemaId) {
        permissionService.checkPermission(schemaId, Schema.class);
        return tableRepository.findAllBySchemaFetchFields(schemaId);
    }

    @Override
    public List<TableRelation> getTableRelationsBySchema(UUID schemaId) {
        permissionService.checkPermission(schemaId, Schema.class);
        return schemaRepository.getTableRelationsBySchema(schemaId);
    }

    @Override
    public Schema delete(UUID id) {
        permissionService.checkPermission(
                id,
                Schema.class,
                List.of(Role.GROUP_ADMIN, Role.GROUP_ASSOCIATE),
                "You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.");
        Schema schema = schemaRepository.findById(id)
                .orElseThrow(() -> new NotFoundException(id));
        tableService.getTablesBySchema(id)
                .stream()
                .map(Table::getId)
                .forEach(tableService::delete);
        schemaRepository.deleteById(id);
        return schema;
    }

}
