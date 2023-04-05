package com.mocker.service;

import com.mocker.domain.model.entity.GenerateType;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface GenerateTypeService {

    /**
     * GENERATETYPE.01 GET /generate-type/{id}
     *
     * @param id of generateType
     * @return generateType
     */
    GenerateType getGenerateType(UUID id);

    /**
     * GENERATETYPE.02 GET /generate-type/{typeId}
     *
     * @param sqlTypeId of sqlType
     * @return generateType by sqlTypeId
     */
    List<GenerateType> getGenerateTypesBySQLType(UUID sqlTypeId);

    /**
     * GENERATETYPE.03 GET /generate-type
     *
     * @return generateTypes
     */
    List<GenerateType> getGenerateTypes();
}
