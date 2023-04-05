package com.mocker.service.impl;

import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.model.entity.Field;
import com.mocker.domain.model.entity.Option;
import com.mocker.domain.model.entity.Table;
import com.mocker.repository.FieldRepository;
import com.mocker.repository.OptionRepository;
import com.mocker.repository.TableRelationRepository;
import com.mocker.repository.TableRepository;
import com.mocker.service.TableService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.Collection;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class TableServiceImpl implements TableService {
    private final TableRepository tableRepository;
    private final FieldRepository fieldRepository;
    private final OptionRepository optionRepository;
    private final TableRelationRepository tableRelationRepository;

    @Override
    public Table getTable(UUID id) {
        return tableRepository.findOneFetchFields(id);
    }

    @Override
    public List<Table> getTablesBySchema(UUID schemaId) {
        return tableRepository.findAllBySchemaFetchFields(schemaId);
    }

    @Override
    public Table upsert(Table table) {
        if (table.getId() != null) {
            List<UUID> ids = table.getFields().stream().map(Field::getId).toList();
            List<UUID> fieldIdsNeedToRemove = tableRepository.findOneFetchFields(table.getId())
                    .getFields()
                    .stream()
                    .map(Field::getId)
                    .filter(id -> !ids.contains(id))
                    .toList();
            optionRepository.deleteAll(optionRepository.findAllByFieldIds(fieldIdsNeedToRemove));
            fieldRepository.deleteAllById(fieldIdsNeedToRemove);
        }
        List<Field> fields = table.getFields();
        table.setFields(null);
        Table save = tableRepository.save(table);
        if (!CollectionUtils.isEmpty(fields)) {
            fields.forEach(item -> {
                Option option = item.getOption();
                optionRepository.save(option
                        .toBuilder()
                        .field(fieldRepository.save(item.toBuilder()
                                .table(save)
                                .option(null)
                                .build()))
                        .build());
            });
        }
        return tableRepository.findOneFetchFields(save.getId());
    }

    @Override
    public Table delete(UUID id) {
        Table table = Optional.ofNullable(tableRepository.findOneFetchFields(id)).orElseThrow(() -> new NotFoundException(id));
        optionRepository.deleteAll(table.getFields()
                .stream()
                .map(Field::getOption)
                .toList());
        tableRelationRepository.deleteAll(table.getFields()
                .stream()
                .map(tableRelationRepository::findSourceAndTargetRelationsByField)
                .flatMap(Collection::stream)
                .toList());
        fieldRepository.deleteAll(table.getFields());
        tableRepository.deleteById(id);
        return table;
    }

}
