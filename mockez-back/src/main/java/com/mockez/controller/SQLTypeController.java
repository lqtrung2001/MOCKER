package com.mockez.controller;

import com.mockez.api.SqltypeApi;
import com.mockez.domain.model.SQLTypeDto;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
public class SQLTypeController implements SqltypeApi {
    @Override
    public ResponseEntity<List<SQLTypeDto>> getSQLTypes() {
        return SqltypeApi.super.getSQLTypes();
    }
}
