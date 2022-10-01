package com.mockez.service;

import com.mockez.domain.model.GenerateBody;

public interface GenerateService {

    /**
     * GENERATE.01 POST /generate
     * @param body of request
     * @return generate sql string
     */
    String generate(GenerateBody body);

}
