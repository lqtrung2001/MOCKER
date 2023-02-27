package com.mocker.repository.customize;

import com.mocker.domain.model.entity.Schema;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface SchemaRepositoryCustom {

    List<Schema> getSchemasByProject(UUID projectId);

    List<Schema> getSchemasWithAccess(UUID userId);
}
