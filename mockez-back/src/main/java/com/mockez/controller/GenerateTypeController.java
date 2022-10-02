package com.mockez.controller;

import com.mockez.api.GeneratetypeApi;
import com.mockez.domain.model.GenerateTypeDto;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
public class GenerateTypeController implements GeneratetypeApi {
    @Override
    public ResponseEntity<GenerateTypeDto> getGenerateType(String id) {
        return GeneratetypeApi.super.getGenerateType(id);
    }

    @Override
    public ResponseEntity<List<GenerateTypeDto>> getGenerateTypeBySQLTypeId(String sqlTypeId) {
        return GeneratetypeApi.super.getGenerateTypeBySQLTypeId(sqlTypeId);
    }

    @Override
    public ResponseEntity<List<GenerateTypeDto>> getGenerateTypes() {
        return GeneratetypeApi.super.getGenerateTypes();
    }
}
