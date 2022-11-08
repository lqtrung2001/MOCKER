package com.mockez.controller;

import com.mockez.api.SchemaApi;
import com.mockez.controller.maper.ApiAbstractMapper;
import com.mockez.domain.dto.SchemaDto;
import com.mockez.service.SchemaService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/v1")
public class SchemaController implements SchemaApi {

    private final ApiAbstractMapper apiAbstractMapper;
    private final SchemaService schemaService;

    @Override
    public ResponseEntity<List<SchemaDto>> getSchemasByProject(UUID projectId) {
        return ResponseEntity.ok(schemaService.getSchemasByProject(projectId).stream()
                .map(apiAbstractMapper::map).collect(Collectors.toList()));
    }
}
