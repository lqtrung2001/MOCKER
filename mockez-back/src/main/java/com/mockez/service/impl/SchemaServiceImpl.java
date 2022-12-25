package com.mockez.service.impl;

import com.mockez.domain.model.entity.Schema;
import com.mockez.repository.SchemaRepository;
import com.mockez.service.SchemaService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class SchemaServiceImpl implements SchemaService {

    private final SchemaRepository schemaRepository;

    @Override
    public List<Schema> getSchemasByProject(UUID projectId) {
        return schemaRepository.getSchemasByProject(projectId);
    }

    @Override
    public UUID saveOrUpdate(Schema schema) {
        return schemaRepository.save(schema).getId();
    }

    @Override
    public Schema getSchema(UUID id) {
        return schemaRepository.findById(id).orElseThrow();
    }

    @Override
    public UUID delete(UUID id) {
        schemaRepository.deleteById(id);
        return id;
    }
}
