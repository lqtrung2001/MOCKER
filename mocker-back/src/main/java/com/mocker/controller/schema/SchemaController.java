package com.mocker.controller.schema;

import com.mocker.api.SchemaApi;
import com.mocker.domain.dto.SchemaDto;
import com.mocker.service.SchemaService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/v1")
public class SchemaController implements SchemaApi {

    private final ApiSchemaMapper apiSchemaMapper;
    private final SchemaService schemaService;

    @Override
    public ResponseEntity<List<SchemaDto>> getSchemas() {
        return ResponseEntity.ok(apiSchemaMapper.map(schemaService.getSchemas()));
    }

    @Override
    public ResponseEntity<UUID> deleteSchema(UUID id) {
        return ResponseEntity.ok(schemaService.delete(id));
    }

    @Override
    public ResponseEntity<UUID> saveOrUpdateSchema(SchemaDto schemaDto) {
        return ResponseEntity.ok(schemaService.saveOrUpdate(apiSchemaMapper.map(schemaDto)));
    }

    @Override
    public ResponseEntity<SchemaDto> getSchema(UUID id) {
        return ResponseEntity.ok(apiSchemaMapper.mapFetchTables(schemaService.getSchema(id)));
    }
}
