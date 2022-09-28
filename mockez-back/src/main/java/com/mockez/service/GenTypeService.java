package com.mockez.service;

import com.mockez.domain.model.GenType;

import java.util.List;

public interface GenTypeService {

    /**
     * GENTYPE.01 GET /gentype/{id}
     * @param id of gentype
     * @return genType
     */
    GenType getGenType(String id);

    /**
     * GENTYPE.02 GET /gentype/{typeId}
     * @param typeId of type
     * @return genType by typeId
     */
    List<GenType> getGenTypesByType(String typeId);

    /**
     * GENTYPE.03 GET /gentype
     * @return genTypes
     */
    List<GenType> getGenTypes();
}
