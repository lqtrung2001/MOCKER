package com.mockez.repository.customize;

import com.mockez.domain.model.entity.Schema;

import java.util.List;
import java.util.UUID;

public interface SchemaRepositoryCustom {

    List<Schema> getSchemasByProject(UUID projectId);

}
