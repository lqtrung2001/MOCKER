package com.mockez.service;

import com.mockez.domain.model.entity.Table;

import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface GenerateService {
    List<Map<String, String>> generateWithTableId(UUID tableId, Integer row);

    List<Map<String, String>> generateWithTable(Table table, Integer row);
}
