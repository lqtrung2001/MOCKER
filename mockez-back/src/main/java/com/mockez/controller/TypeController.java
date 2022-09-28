package com.mockez.controller;

import com.mockez.api.TypeApi;
import com.mockez.domain.model.Type;
import com.mockez.service.TypeService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
public class TypeController implements TypeApi {

    private TypeService typeService;

    @Override
    public ResponseEntity<List<Type>> getTypes() {
        return ResponseEntity.ok(typeService.getTypes());
    }


}
