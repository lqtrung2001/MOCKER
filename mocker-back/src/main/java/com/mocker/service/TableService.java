package com.mocker.service;

import com.mocker.domain.model.entity.Table;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface TableService {

    Table getTable(UUID id);

    List<Table> getTablesBySchema(UUID schemaId);

    Table upsert(Table table);

    Table delete(UUID id);
}
