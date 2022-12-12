package com.mockez.repository.customize;

import com.mockez.domain.model.entity.Schema;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface SchemaRepositoryCustom {

    List<Schema> getSchemasByProject(UUID projectId);

}
