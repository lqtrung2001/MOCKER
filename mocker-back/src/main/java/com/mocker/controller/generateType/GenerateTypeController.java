package com.mocker.controller.generateType;

import com.mocker.api.GenerateTypeApi;
import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.controller.generate.ApiGenerateMapper;
import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.GenerateTypeDto;
import com.mocker.domain.exception.InternalException;
import com.mocker.service.GenerateTypeService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/v1")
public class GenerateTypeController implements GenerateTypeApi {

    private final ApiAbstractMapper apiAbstractMapper;
    private final ApiGenerateMapper apiGenerateMapper;
    private final GenerateTypeService generateTypeService;

    @Override
    public ResponseEntity<GenerateTypeDto> getGenerateType(UUID id) throws InternalException {
        return ResponseEntity.ok(apiGenerateMapper.map(generateTypeService.getGenerateType(id)));
    }

}
