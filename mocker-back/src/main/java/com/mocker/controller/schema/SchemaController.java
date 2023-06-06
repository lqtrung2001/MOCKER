package com.mocker.controller.schema;

import com.mocker.api.SchemaApi;
import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.controller.table.ApiTableMapperDecorator;
import com.mocker.controller.tableRelation.ApiTableRelationMapper;
import com.mocker.domain.dto.RoleDto;
import com.mocker.domain.dto.SchemaDto;
import com.mocker.domain.dto.TableDto;
import com.mocker.domain.dto.TableRelationDto;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.service.SchemaService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/v1")
public class SchemaController implements SchemaApi {
    private final ApiSchemaMapper apiSchemaMapper;
    private final ApiAbstractMapper apiAbstractMapper;
    private final ApiTableMapperDecorator apiTableMapperDecorator;
    private final ApiTableRelationMapper apiTableRelationMapper;
    private final SchemaService schemaService;

    @Override
    public ResponseEntity<List<SchemaDto>> getSchemas(List<RoleDto> rolesDto) {
        List<Role> roles = apiAbstractMapper.mapRolesDtoToRoles(rolesDto);
        return ResponseEntity.ok(apiSchemaMapper.map(schemaService.getSchemas(roles)));
    }

    @Override
    public ResponseEntity<SchemaDto> deleteSchema(UUID id) {
        return ResponseEntity.ok(apiSchemaMapper.map(schemaService.delete(id)));
    }

    @Override
    public ResponseEntity<List<TableDto>> getTablesBySchema(UUID schemaId) {
        return ResponseEntity.ok(apiTableMapperDecorator.mapToTablesDtoFetchFields(schemaService.getTablesBySchema(schemaId)));
    }

    @Override
    public ResponseEntity<List<TableRelationDto>> getTableRelationsBySchema(UUID id) {
        return ResponseEntity.ok(apiTableRelationMapper.map(schemaService.getTableRelationsBySchema(id)));
    }

    @Override
    public ResponseEntity<SchemaDto> upsertSchema(SchemaDto schemaDto) {
        return ResponseEntity.ok(apiSchemaMapper.map(schemaService.upsert(apiSchemaMapper.map(schemaDto))));
    }

    @Override
    public ResponseEntity<SchemaDto> getSchema(UUID id) {
        return ResponseEntity.ok(apiSchemaMapper.map(schemaService.getSchema(id)));
    }
}
