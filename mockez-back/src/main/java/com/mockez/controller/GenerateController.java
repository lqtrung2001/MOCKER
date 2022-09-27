package com.mockez.controller;

import com.mockez.api.GenerateApi;
import com.mockez.domain.model.GenerateRequestBody;
import com.mockez.service.GenerateService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

@RestController
@AllArgsConstructor
public class GenerateController implements GenerateApi {

    private GenerateService generateService;

    @Override
    public ResponseEntity<String> generate(GenerateRequestBody body) {
        return ResponseEntity.ok(generateService.generate(body));
    }
}
