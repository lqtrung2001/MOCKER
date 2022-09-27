package com.mockez.repository.customize.impl;

import com.mockez.domain.model.GenType;
import com.mockez.repository.customize.GenTypeRepositoryCustomizeImpl;

public class GenTypeRepositoryCustomize implements GenTypeRepositoryCustomizeImpl {

    @Override
    public GenType fetchGenTypeData(String id) {
        // using queryDsl for this
        return null;
    }
}
