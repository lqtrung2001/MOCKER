package com.mocker.service.impl;

import com.mocker.domain.model.entity.Field;
import com.mocker.domain.model.entity.GenerateType;
import com.mocker.domain.model.entity.Table;
import com.mocker.repository.SourceRepository;
import com.mocker.repository.TableRepository;
import com.mocker.service.GenerateService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class GenerateServiceImpl implements GenerateService {

    private final TableRepository tableRepository;
    private final SourceRepository sourceRepository;

    @Override
    public List<Map<String, String>> generateWithTableId(UUID tableId, Integer row) {
        Table table = tableRepository.findOneWithEagerFields(tableId);
        return generate(table, row);
    }

    @Override
    public List<Map<String, String>> generateWithTable(Table table, Integer row) {
        return generate(table, row);
    }

    public List<Map<String, String>> generate(Table table, Integer row) {
        List<Map<String, String>> result = new ArrayList<>();
        Random random = new Random();
        List<Field> fields = table.getFields().stream().peek(field -> {
            GenerateType generateType = field.getGenerateType();
            generateType.setSources(sourceRepository.findAllByGenerateType(generateType));
            field.setGenerateType(generateType);
        }).toList();
        int count = 0;
        while (count++ < row) {
            Map<String, String> map = new HashMap<>();
            fields.forEach(field -> {
                int index = random.nextInt(0, field.getGenerateType().getSources().size());
                if (random.nextInt(0, 100) > field.getOption().getBlank()) {
                    map.put(field.getName(), field.getGenerateType().getSources().get(index).getValue());
                } else {
                    map.put(field.getName(), null);
                }
            });
            result.add(map);
        }
        return result;
    }
}
