package com.mocker.service.impl;

import com.mocker.domain.exception.InternalException;
import com.mocker.domain.model.entity.Field;
import com.mocker.domain.model.entity.Table;
import com.mocker.repository.FieldRepository;
import com.mocker.repository.OptionRepository;
import com.mocker.repository.TableRepository;
import com.mocker.service.TableService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;
import java.util.stream.Collectors;

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
    public UUID saveOrUpdateTable(Table table) throws InternalException {
        try {
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
            Table save = tableRepository.save(table.toBuilder().fields(null).build());
            Optional.ofNullable(fields).ifPresent(items ->
                    fieldRepository.saveAll(items
                            .stream()
                            .map(i -> i.toBuilder().table(save).build())
                            .collect(Collectors.toList())));
            return save.getId();
        } catch (Exception e) {
            throw new InternalException("validation.dataAccessError");
        }
    }

    @Override
    public UUID delete(UUID id) {
        Table table = tableRepository.findOneWithEagerFields(id);
        if (table == null) {
            throw new IllegalStateException("validation.dataAccessError");
        }
        fieldRepository.deleteAll(table.getFields());
        tableRepository.deleteById(id);
        return id;
    }

}
