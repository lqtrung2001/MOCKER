package com.mocker.service;

import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.model.entity.SQLType;

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

    List<SQLType> getSQLTypesFetchGenerateTypes() throws NotFoundException;
}
