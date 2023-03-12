package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.Table;
import com.mocker.repository.SchemaRepository;
import com.mocker.service.SchemaService;
import com.mocker.service.TableService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Service
@Transactional
@RequiredArgsConstructor
public class SchemaServiceImpl implements SchemaService {
    private final SchemaRepository schemaRepository;
    private final TableService tableService;
    private final ApplicationContextHolder applicationContextHolder;


    @Override
    public List<Schema> getSchemasByProject(UUID projectId) {
        return schemaRepository.getSchemasByProject(projectId);
    }

    @Override
    public Schema saveOrUpdate(Schema schema) {
        return schemaRepository.save(schema);
    }

    @Override
    public Schema getSchema(UUID id) {
        return schemaRepository.getSchema(id);
    }

    @Override
    public List<Schema> getSchemas() {
        return schemaRepository.getSchemas(applicationContextHolder.getCurrentUser().getId());
    }

    @Override
    public UUID delete(UUID id) {
        tableService.getTablesBySchema(id).stream().map(Table::getId).forEach(tableService::delete);
        schemaRepository.deleteById(id);
        return id;
    }
}
