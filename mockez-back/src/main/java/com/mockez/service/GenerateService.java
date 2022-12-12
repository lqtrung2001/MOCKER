package com.mockez.service;

import com.mockez.domain.model.entity.Field;

import java.util.List;
import java.util.Map;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface GenerateService {

    /**
     * GENERATE.01 POST /generate
     * @param row of generate request body
     * @param fields of generate request body
     * @return generate sql string
     */
    List<Map<String, String>> generate(Integer row, List<Field> fields);

}
