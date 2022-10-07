package com.mockez.service;

import com.mockez.domain.model.GenerateReq;

import java.util.List;
import java.util.Map;

public interface GenerateService {

    /**
     * GENERATE.01 POST /generate
     * @param body of request
     * @return generate sql string
     */
    List<Map<String, String>> generate(GenerateReq body);

}
