package com.mockez.service;

import com.mockez.domain.model.entity.SQLType;

import java.util.List;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface SQLTypeService {

    /**
     * SQLTYPE.01 GET /sql-type
     * @return sqlTypes
     */
    List<SQLType> getSQLTypes();
}
