package com.mockez.service;

import com.mockez.domain.model.entity.Schema;

import java.util.List;
import java.util.UUID;

public interface SchemaService {

    /**
     * SCHEMA.01 GET /schema/{projectId}
     * @param projectId of project
     * @return schemas by projectId
     */
    List<Schema> getSchemasByProject(UUID projectId);
}
