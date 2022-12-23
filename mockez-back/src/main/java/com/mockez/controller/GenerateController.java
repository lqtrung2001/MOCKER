package com.mockez.controller;

import com.mockez.api.GenerateApi;
import com.mockez.controller.maper.ApiAbstractMapper;
import com.mockez.domain.dto.TableDto;
import com.mockez.service.GenerateService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
    public ResponseEntity<List<Map<String, String>>> showGenerate(Integer row, TableDto tableDto) {
        return ResponseEntity.ok(generateService.generateWithTable(apiAbstractMapper.map(tableDto), row));
    }
}
