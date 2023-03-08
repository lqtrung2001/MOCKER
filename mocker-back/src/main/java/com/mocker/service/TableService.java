package com.mocker.service;

import com.mocker.domain.exception.InternalException;
import com.mocker.domain.model.entity.Table;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface TableService {

    Table getTable(UUID id);

    List<Table> getTablesBySchema(UUID schemaId);

    Table saveOrUpdateTable(Table table) throws InternalException;

    UUID delete(UUID id);
}
