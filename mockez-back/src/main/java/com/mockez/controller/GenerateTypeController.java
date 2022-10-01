package com.mockez.controller;

import com.mockez.api.GentypeApi;
import com.mockez.domain.model.GenTypeApiBean;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
public class GenerateTypeController implements GentypeApi {

    @Override
    public ResponseEntity<GenTypeApiBean> getGenType(String id) {
        return GentypeApi.super.getGenType(id);
    }

    @Override
    public ResponseEntity<List<GenTypeApiBean>> getGenTypeByTypeId(String typeId) {
        return GentypeApi.super.getGenTypeByTypeId(typeId);
    }

    @Override
    public ResponseEntity<List<GenTypeApiBean>> getGenTypes() {
        return GentypeApi.super.getGenTypes();
    }
}
