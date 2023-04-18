package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.Table;
import com.mocker.domain.model.entity.TableRelation;
import com.mocker.repository.SchemaRepository;
import com.mocker.repository.TableRepository;
import com.mocker.service.SchemaService;
import com.mocker.service.TableService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;
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
    private final TableRepository tableRepository;
    private final ApplicationContextHolder applicationContextHolder;

    @Override
    public List<Schema> getSchemasByProject(UUID projectId) {
        return Optional.ofNullable(schemaRepository.getSchemasByProject(projectId))
                .orElseThrow(() -> new NotFoundException(projectId));
    }

    @Override
    public Schema upsert(Schema schema) {
        return Optional.of(schemaRepository.save(schema))
                .orElseThrow(() -> new NotFoundException(schema.getId()));
    }

    @Override
    public Schema getSchema(UUID id) {
        return Optional.ofNullable(schemaRepository.getSchema(id))
                .orElseThrow(() -> new NotFoundException(id));
    }

    @Override
    public List<Schema> getSchemas() {
        return schemaRepository.getSchemas(applicationContextHolder.getCurrentUser().getId());
    }

    @Override
    public List<Table> getTablesBySchema(UUID schemaId) {
        return Optional.ofNullable(tableRepository.findAllBySchemaFetchFields(schemaId))
                .orElseThrow(() -> new NotFoundException(schemaId));
    }

    @Override
    public List<TableRelation> getTableRelationsBySchema(UUID schemaId) {
        return Optional.ofNullable(schemaRepository.getTableRelationsBySchema(schemaId))
                .orElseThrow(() -> new NotFoundException(schemaId));
    }

    @Override
    public Schema delete(UUID id) {
        Schema schema = Optional
                .ofNullable(schemaRepository.getSchema(id))
                .orElseThrow(() -> new NotFoundException(id));
        tableService.getTablesBySchema(id)
                .stream()
                .map(Table::getId)
                .forEach(tableService::delete);
        schemaRepository.deleteById(id);
        return schema;
    }
}
