package com.mockez.controller;

import com.mockez.api.SchemaApi;
import com.mockez.controller.maper.ApiAbstractMapper;
import com.mockez.service.SchemaService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@AllArgsConstructor
@RequestMapping(path = "/api/v1")
public class SchemaController implements SchemaApi{

    private final ApiAbstractMapper apiAbstractMapper;
    private final SchemaService schemaService;
}
