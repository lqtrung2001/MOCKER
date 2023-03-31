package com.mocker.service;

import com.mocker.domain.model.entity.Field;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface FieldService {
    List<Field> getFieldsByTable(UUID tableId);
}
