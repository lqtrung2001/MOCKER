package com.mocker.repository.customize;

import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.TableRelation;
import com.mocker.domain.model.entity.enumeration.Role;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

public interface SchemaRepositoryCustom {

    List<Schema> getSchemasByProjectId(UUID authId, UUID projectId, List<Role> roles);

    List<Schema> getSchemas(UUID userId, List<Role> roles);

    Schema getSchema(UUID id);

    List<TableRelation> getTableRelationsBySchema(UUID schemaId);
}
