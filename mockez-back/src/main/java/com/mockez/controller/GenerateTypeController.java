package com.mockez.controller;

import com.mockez.api.GenerateTypeApi;
import com.mockez.controller.maper.ApiAbstractMapper;
import com.mockez.domain.dto.GenerateTypeDto;
import com.mockez.service.GenerateTypeService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@RestController
@AllArgsConstructor
@RequestMapping(path = "/api/v1")
public class GenerateTypeController implements GenerateTypeApi {

    private final ApiAbstractMapper apiAbstractMapper;
    private final GenerateTypeService generateTypeService;

    @Override
    public ResponseEntity<GenerateTypeDto> getGenerateType(String id) {
        return ResponseEntity.ok(apiAbstractMapper.map(generateTypeService.getGenerateType(UUID.fromString(id))));
    }

    @Override
    public ResponseEntity<List<GenerateTypeDto>> getGenerateTypeBySQLTypeId(String sqlTypeId) {
        return ResponseEntity.ok(generateTypeService.getGenerateTypesBySQLType(UUID.fromString(sqlTypeId))
                .stream().map(apiAbstractMapper::map).collect(Collectors.toList()));
    }

    @Override
    public ResponseEntity<List<GenerateTypeDto>> getGenerateTypes() {
        return ResponseEntity.ok(generateTypeService.getGenerateTypes().stream()
                .map(apiAbstractMapper::map).collect(Collectors.toList()));
    }
}
