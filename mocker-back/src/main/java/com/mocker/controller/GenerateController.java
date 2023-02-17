package com.mocker.controller;

import com.mocker.api.GenerateApi;
import com.mocker.controller.maper.ApiAbstractMapper;
import com.mocker.domain.dto.TableDto;
import com.mocker.service.GenerateService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/v1")
public class GenerateController implements GenerateApi {

    private final ApiAbstractMapper apiAbstractMapper;
    private final GenerateService generateService;

    @Override
    public ResponseEntity<List<Map<String, String>>> generate(UUID tableId, Integer row) {
        return ResponseEntity.ok(generateService.generateWithTableId(tableId, row));
    }

    @Override
    public ResponseEntity<List<Map<String, String>>> showGenerate(BigDecimal row, TableDto tableDto) {
        return ResponseEntity.ok(generateService.generateWithTable(apiAbstractMapper.map(tableDto), row.intValue()));
    }
}
