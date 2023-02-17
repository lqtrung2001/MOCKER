package com.mocker.controller;

import com.mocker.api.SqlTypeApi;
import com.mocker.controller.maper.ApiAbstractMapper;
import com.mocker.domain.dto.SQLTypeDto;
import com.mocker.service.SQLTypeService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/v1")
public class SQLTypeController implements SqlTypeApi {

    private final ApiAbstractMapper apiAbstractMapper;
    private final SQLTypeService sqlTypeService;

    @Override
    public ResponseEntity<List<SQLTypeDto>> getSQLTypes() {
        return ResponseEntity.ok(sqlTypeService.getSQLTypes().stream()
                .map(apiAbstractMapper::map).collect(Collectors.toList()));
    }
}
