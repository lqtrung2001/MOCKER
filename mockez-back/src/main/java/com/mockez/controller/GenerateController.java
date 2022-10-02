package com.mockez.controller;

import com.mockez.api.GenerateApi;
import com.mockez.domain.model.GenerateRequestBodyDto;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

@RestController
@AllArgsConstructor
public class GenerateController implements GenerateApi {
    @Override
    public ResponseEntity<String> generate(GenerateRequestBodyDto generateRequestBodyDto) {
        return GenerateApi.super.generate(generateRequestBodyDto);
    }
}
