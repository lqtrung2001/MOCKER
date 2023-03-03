package com.mocker.service;

import com.mocker.domain.model.entity.Schema;

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

    UUID saveOrUpdate(Schema schema);

    UUID delete(UUID id);

    Schema getSchema(UUID id);

    List<Schema> getSchemas();
}
