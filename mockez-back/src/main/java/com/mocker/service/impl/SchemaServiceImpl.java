package com.mocker.service.impl;

import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.Table;
import com.mocker.repository.SchemaRepository;
import com.mocker.repository.TableRepository;
import com.mocker.service.SchemaService;
import com.mocker.service.TableService;
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
    private final TableService tableService;
    private final TableRepository tableRepository;

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
        tableService.getTablesBySchema(id).stream().map(Table::getId).forEach(tableService::delete);
        schemaRepository.deleteById(id);
        return id;
    }
}
