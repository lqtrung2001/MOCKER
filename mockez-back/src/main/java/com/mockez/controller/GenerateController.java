package com.mockez.controller;

import com.mockez.api.GenerateApi;
import com.mockez.domain.model.GenerateReq;
import com.mockez.domain.model.GenerateReqDto;
import com.mockez.domain.model.entity.Field;
import com.mockez.domain.model.entity.GenerateType;
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
        GenerateReq body = new GenerateReq();
        body.setRow(1000);

        GenerateType generateType = new GenerateType("68d318cb-5db2-4b60-9f17-61762ebf823d", null, null, null, null, null);
        Field field1 = new Field();
        field1.setName("first_name");
        field1.setGenerateType(generateType);
        Field field2 = new Field();
        field2.setName("last_name");
        field2.setGenerateType(generateType);
        Field field3 = new Field();
        field3.setName("friend");
        field3.setGenerateType(generateType);
        body.setFields(List.of(
                field1,
                field2,
                field3
        ));
        return ResponseEntity.ok(generateService.generate(body));
    }
}
