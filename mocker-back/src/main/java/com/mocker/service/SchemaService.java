package com.mocker.service;

import com.mocker.domain.exception.InternalException;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.Table;

import java.util.Arrays;
import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface SchemaService {

    /**
     * SCHEMA.01 GET /schema/{projectId}
     * @param projectId of project
     * @return schemas by projectId
     */
    List<Schema> getSchemasByProject(UUID projectId);

    Schema upsert(Schema schema);

    Schema delete(UUID id);

    Schema getSchema(UUID id);

    List<Schema> getSchemas();

    List<Table> getTablesBySchema(UUID schemaId);
}
