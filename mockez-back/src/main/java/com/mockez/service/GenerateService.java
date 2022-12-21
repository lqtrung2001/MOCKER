package com.mockez.service;

import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface GenerateService {
    List<Map<String, String>> generateWithTableId(UUID tableId, Integer row);
}
