package com.mocker.repository.customize;

import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.TableRelation;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

public interface SchemaRepositoryCustom {

    List<Schema> getSchemasByProject(UUID projectId);

    List<Schema> getSchemas(UUID userId);

    Schema getSchema(UUID id);

    List<TableRelation> getTableRelationsBySchema(UUID schemaId);
}
