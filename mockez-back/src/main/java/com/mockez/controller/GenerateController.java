package com.mockez.controller;

import com.mockez.api.GenerateApi;
import com.mockez.controller.maper.ApiAbstractMapper;
import com.mockez.domain.dto.GenerateReqDto;
import com.mockez.service.GenerateService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@AllArgsConstructor
@RequestMapping(path = "/api/v1")
public class GenerateController implements GenerateApi {

    private final ApiAbstractMapper apiAbstractMapper;
    private final GenerateService generateService;

    @Override
    public ResponseEntity<List<Map<String, String>>> generate(GenerateReqDto generateReqDto) {
        return ResponseEntity.ok(generateService.generate(apiAbstractMapper.map(generateReqDto)));
    }
}
