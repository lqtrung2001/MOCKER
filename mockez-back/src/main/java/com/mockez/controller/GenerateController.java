package com.mockez.controller;

import com.mockez.api.GenerateApi;
import com.mockez.domain.model.GenerateReqDto;
import com.mockez.service.GenerateService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@AllArgsConstructor
public class GenerateController implements GenerateApi {

    private final GenerateService generateService;

    @Override
    public ResponseEntity<List<Map<String, String>>> generate(GenerateReqDto generateReqDto) {
        return GenerateApi.super.generate(generateReqDto);
    }
}
