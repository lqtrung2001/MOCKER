package com.mocker.repository.customize;

import com.mocker.domain.model.entity.Field;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface FieldRepositoryCustom {

    List<Field> getFieldsByTable(UUID tableId);
}
