package com.mockez.service;

import com.mockez.domain.model.GenerateRequestBody;

public interface GenerateService {

    /**
     * GENERATE.01 POST /generate
     * @param body of request
     * @return generate sql string
     */
    String generate(GenerateRequestBody body);

}
