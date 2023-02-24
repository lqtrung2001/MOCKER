package com.mocker.controller;

import com.mocker.api.GenerateTypeApi;
import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.GenerateTypeDto;
import com.mocker.domain.model.entity.User;
import com.mocker.service.GenerateTypeService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/v1")
public class GenerateTypeController implements GenerateTypeApi {

    private final ApiAbstractMapper apiAbstractMapper;
    private final GenerateTypeService generateTypeService;
    private final ApplicationContextHolder applicationContextHolder;

    @Override
    public ResponseEntity<GenerateTypeDto> getGenerateType(UUID id) {
        return ResponseEntity.ok(apiAbstractMapper.map(generateTypeService.getGenerateType(id)));
    }

    @Override
    public ResponseEntity<List<GenerateTypeDto>> getGenerateTypesBySQLType(UUID sqlTypeId) {
        return ResponseEntity.ok(generateTypeService.getGenerateTypesBySQLType(sqlTypeId)
                .stream().map(apiAbstractMapper::map).collect(Collectors.toList()));
    }

    @Override
    public ResponseEntity<List<GenerateTypeDto>> getGenerateTypes() {
        User user = applicationContextHolder.getCurrentUser();
        return ResponseEntity.ok(generateTypeService.getGenerateTypes().stream()
                .map(apiAbstractMapper::map).collect(Collectors.toList()));
    }
}
