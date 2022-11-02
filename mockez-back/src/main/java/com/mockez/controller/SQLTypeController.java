package com.mockez.controller;

import com.mockez.api.SqlTypeApi;
import com.mockez.controller.maper.ApiAbstractMapper;
import com.mockez.domain.dto.SQLTypeDto;
import com.mockez.service.SQLTypeService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

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
