package com.mockez.service;

import com.mockez.domain.model.Type;

import java.util.List;

public interface TypeService {

    /**
     * TYPE.01 GET /type
     * @return types
     */
    List<Type> getTypes();
}
