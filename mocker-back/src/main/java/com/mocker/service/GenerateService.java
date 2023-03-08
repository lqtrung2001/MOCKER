package com.mocker.service;

import com.mocker.domain.exception.InternalException;
import com.mocker.domain.model.entity.Table;

import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface GenerateService {
    List<Map<String, String>> generateWithTableId(UUID tableId, Integer row) throws InternalException;

    List<Map<String, String>> generateWithTable(Table table, Integer row) throws InternalException;
}
