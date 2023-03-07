package com.mocker.service.impl;

import com.mocker.domain.exception.UnexpectedException;
import com.mocker.domain.model.entity.Field;
import com.mocker.domain.model.entity.Option;
import com.mocker.domain.model.entity.Table;
import com.mocker.repository.FieldRepository;
import com.mocker.repository.OptionRepository;
import com.mocker.repository.TableRepository;
import com.mocker.service.TableService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class TableServiceImpl implements TableService {

    private final TableRepository tableRepository;
    private final FieldRepository fieldRepository;
    private final OptionRepository optionRepository;

    @Override
    public Table getTable(UUID id) {
        return tableRepository.findOneWithEagerFields(id);
    }

    @Override
    public List<Table> getTablesBySchema(UUID schemaId) {
        return tableRepository.findAllBySchema(schemaId);
    }

    @Override
    public Table saveOrUpdateTable(Table table) {
        if (table.getId() != null) {
            List<UUID> ids = table.getFields().stream().map(Field::getId).toList();
            List<UUID> fieldIdsNeedToRemove = tableRepository.findOneWithEagerFields(table.getId())
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
        return save.toBuilder().fields(fields).build();
    }

    @Override
    public UUID delete(UUID id) {
        Table table = tableRepository.findOneWithEagerFields(id);
        if (table == null) {
            throw new UnexpectedException("Table " + id + " does not exist");
        }
        fieldRepository.deleteAll(table.getFields());
        tableRepository.deleteById(id);
        return id;
    }


}
