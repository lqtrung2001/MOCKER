package com.mockez.controller;

import com.mockez.api.TypeApi;
import com.mockez.domain.model.TypeApiBean;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
public class SQLTypeController implements TypeApi {

    @Override
    public ResponseEntity<List<TypeApiBean>> getTypes() {
        return TypeApi.super.getTypes();
    }
}
