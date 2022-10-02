package com.mockez.service;

import com.mockez.domain.model.entity.GenerateType;

import java.util.List;

public interface GenerateTypeService {

    /**
     * GENERATETYPE.01 GET /generate-type/{id}
     * @param id of generateType
     * @return generateType
     */
    GenerateType getGenerateType(String id);

    /**
     * GENERATETYPE.02 GET /generate-type/{typeId}
     * @param sqlTypeId of sqlType
     * @return generateType by sqlTypeId
     */
    List<GenerateType> getGenerateTypesByType(String sqlTypeId);

    /**
     * GENERATETYPE.03 GET /generate-type
     * @return generateTypes
     */
    List<GenerateType> getGenerateTypes();
}
