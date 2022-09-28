package com.mockez.controller;

import com.mockez.api.GentypeApi;
import com.mockez.domain.model.GenType;
import com.mockez.service.GenTypeService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
public class GenTypeController implements GentypeApi {

    private GenTypeService genTypeService;

    @Override
    public ResponseEntity<GenType> getGenType(String id) {
        return ResponseEntity.ok(genTypeService.getGenType(id));
    }

    @Override
    public ResponseEntity<List<GenType>> getGenTypeByTypeId(String typeId) {
        return ResponseEntity.ok(genTypeService.getGenTypesByType(typeId));
    }

    @Override
    public ResponseEntity<List<GenType>> getGenTypes() {
        return ResponseEntity.ok(genTypeService.getGenTypes());
    }
}
