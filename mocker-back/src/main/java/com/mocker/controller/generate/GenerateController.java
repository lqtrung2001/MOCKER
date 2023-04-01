package com.mocker.controller.generate;

import com.mocker.api.GenerateApi;
import com.mocker.controller.table.ApiTableMapper;
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
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/v1")
public class GenerateController implements GenerateApi {
    private final ApiGenerateMapper apiGenerateMapper;
    private final ApiTableMapper apiTableMapper;
    private final GenerateService generateService;

    @Override
    public ResponseEntity<List<Map<String, String>>> generate(UUID tableId, Integer row) {
        return ResponseEntity.ok(generateService.generateWithTableId(tableId, row));
    }

    @Override
    public ResponseEntity<List<Map<String, String>>> generateWithTable(BigDecimal row, TableDto tableDto) {
        return ResponseEntity.ok(generateService.generateWithTable(apiTableMapper.map(tableDto), row.intValue()));
    }

    @Override
    public ResponseEntity<Map<String, Map<String, Object>>> generateWithSchema(UUID id) {
        return ResponseEntity.ok(generateService.generateWithSchema(id));
    }
}
