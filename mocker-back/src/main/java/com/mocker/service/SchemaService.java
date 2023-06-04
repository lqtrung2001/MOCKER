package com.mocker.service;

import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.Table;
import com.mocker.domain.model.entity.TableRelation;
import com.mocker.domain.model.entity.enumeration.Role;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

public interface SchemaService {
    List<Schema> getSchemasByProjectId(UUID projectId, List<Role> roles);

    Schema upsert(Schema schema);

    Schema delete(UUID id);

    Schema getSchema(UUID id);

    List<Schema> getSchemas(List<Role> roles);

    List<Table> getTablesBySchema(UUID schemaId);

    List<TableRelation> getTableRelationsBySchema(UUID schemaId);
}
