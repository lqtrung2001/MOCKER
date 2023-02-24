package com.mocker.repository.customize;

import com.mocker.domain.model.entity.SQLType;

import java.util.List;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface SQLTypeRepositoryCustom {
    List<SQLType> getSQLTypesFetchGenerateTypes();
}
