package com.mockez.service;

import com.mockez.domain.model.entity.Table;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface TableService {

    Table getTable(UUID id);

    List<Table> getTablesBySchema(UUID schemaId);

    UUID saveOrUpdateTable(Table table);
}
