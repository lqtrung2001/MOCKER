package com.mocker.service.impl;

import com.mocker.constant.GenerateConstant;
import com.mocker.domain.model.entity.Field;
import com.mocker.domain.model.entity.GenerateType;
import com.mocker.domain.model.entity.Table;
import com.mocker.domain.model.entity.TableRelation;
import com.mocker.domain.model.entity.enumeration.RelationType;
import com.mocker.repository.FieldRepository;
import com.mocker.repository.SourceRepository;
import com.mocker.repository.TableRepository;
import com.mocker.service.GenerateService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.stream.Collectors;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class GenerateServiceImpl implements GenerateService {

    private final TableRepository tableRepository;
    private final SourceRepository sourceRepository;
    private final FieldRepository fieldRepository;

    @Override
    public List<Map<String, String>> generateWithTableId(UUID tableId, Integer row) {
        Table table = tableRepository.findOneFetchFields(tableId);
        return generate(table, row);
    }

    @Override
    public List<Map<String, String>> generateWithTable(Table table, Integer row) {
        return generate(table, row);
    }

    @SuppressWarnings("unchecked")
    @Override
    public Map<String, Map<String, Object>> generateWithSchema(UUID id) {
        List<Table> tables = tableRepository.findAllBySchema(id);
        List<Table> sortedTables = new ArrayList<>(tables);
        tables.forEach(table -> {
            List<Field> fields = fieldRepository.getFieldsByTable(table.getId());
            fields.forEach(field -> field.getTableRelationTargets().forEach(tableRelation -> {
                int sourceIndex = sortedTables.stream().map(Table::getId).toList().indexOf(tableRelation.getSource().getTable().getId());
                int targetIndex = sortedTables.stream().map(Table::getId).toList().indexOf(tableRelation.getTarget().getTable().getId());
                switch (tableRelation.getRelationType()) {
                    case ONE_TO_MANY -> {
                        if (sourceIndex < targetIndex) {
                            Collections.swap(sortedTables, sourceIndex, targetIndex);
                        }
                    }
                    case MANY_TO_ONE -> {
                        if (sourceIndex > targetIndex) {
                            Collections.swap(sortedTables, sourceIndex, targetIndex);
                        }
                    }
                }
            }));
        });
        Map<String, Map<String, Object>> result = new HashMap<>();
        AtomicInteger counter = new AtomicInteger(1);

        sortedTables.forEach(table -> {
            Map<String, Object> mapIndexAndValues = new HashMap<>();
            mapIndexAndValues.put(GenerateConstant.INDEX, counter.getAndIncrement());
            List<Map<String, Object>> values = new ArrayList<>();
            List<Field> fields = fieldRepository.getFieldsByTable(table.getId()).stream().peek(field -> {
                GenerateType generateType = field.getGenerateType();
                generateType.setSources(sourceRepository.findAllByGenerateType(generateType));
                field.setGenerateType(generateType);
            }).toList();
            int row = 0;
            Random random = new Random();
            Map<String, List<Object>> mapRelationValue = new HashMap<>();
            while (row++ < 5) {
                Map<String, Object> map = new HashMap<>();
                fields.forEach(field -> {
                    // [MOC-49]: normal insert
                    // TODO: Do Quoc Viet check number of field's relations
                    // relationship: not ONE_TO_ONE and not ONE_TO_MANY
                    if ((CollectionUtils.isEmpty(field.getTableRelationSources()) && CollectionUtils.isEmpty(field.getTableRelationTargets()))
                            || ((!CollectionUtils.isEmpty(field.getTableRelationSources())
                            && field.getTableRelationSources().stream().map(TableRelation::getRelationType).noneMatch(RelationType::isRelationOneTo))
                            && (!CollectionUtils.isEmpty(field.getTableRelationTargets()))
                            && (field.getTableRelationTargets().stream().map(TableRelation::getRelationType).noneMatch(RelationType.ONE_TO_ONE::equals)))
                    ) {
                        int index = random.nextInt(field.getGenerateType().getSources().size());
                        map.put(field.getName(), field.getGenerateType().getSources().get(index).getValue());
                    } else {
                        // TODO: Do Quoc Viet check number of field's relations
                        // relationship:  ONE_TO_MANY
                        if (!CollectionUtils.isEmpty(field.getTableRelationSources())
                                && field.getTableRelationSources().stream().map(TableRelation::getRelationType).allMatch(RelationType.ONE_TO_MANY::equals)) {
                            String fieldName = field.getTableRelationSources().stream().map(TableRelation::getTarget)
                                    .map(Field::getName)
                                    .collect(Collectors.toList())
                                    .get(0);
                            if (CollectionUtils.isEmpty(mapRelationValue.get(fieldName))) {
                                String tableName = field.getTableRelationSources().stream().map(TableRelation::getTarget)
                                        .map(Field::getTable)
                                        .map(Table::getName)
                                        .collect(Collectors.toList())
                                        .get(0);
                                mapRelationValue.put(fieldName, ((List<Object>) result.get(tableName).get(GenerateConstant.VALUES))
                                        .stream()
                                        .map(obj -> ((HashMap<String, Object>) obj).get(fieldName))
                                        .collect(Collectors.toList()));
                            }
                            List<Object> sourceValues = mapRelationValue.get(fieldName);
                            map.put(field.getName(), sourceValues.get(random.nextInt(sourceValues.size())));
                        } else {
                            // relationship: ONE_TO_ONE
                            // TODO: Do Quoc Viet check number of field's relations
                            if ((!CollectionUtils.isEmpty(field.getTableRelationSources())
                                    && field.getTableRelationSources().stream().map(TableRelation::getRelationType).allMatch(RelationType.ONE_TO_ONE::equals))
                                    || (!CollectionUtils.isEmpty(field.getTableRelationTargets())
                                    && field.getTableRelationTargets().stream().map(TableRelation::getRelationType).allMatch(RelationType.ONE_TO_ONE::equals))) {
                                String tableName = CollectionUtils.isEmpty(field.getTableRelationSources())
                                        ? field.getTableRelationTargets().stream()
                                        .map(TableRelation::getSource)
                                        .map(Field::getTable).map(Table::getName)
                                        .collect(Collectors.toList())
                                        .get(0)
                                        : field.getTableRelationSources().stream()
                                        .map(TableRelation::getTarget)
                                        .map(Field::getTable).map(Table::getName)
                                        .collect(Collectors.toList())
                                        .get(0);

                                if (result.get(tableName) == null) {
                                    int index = random.nextInt(field.getGenerateType().getSources().size());
                                    map.put(field.getName(), field.getGenerateType().getSources().get(index).getValue());
                                } else {
                                    String fieldName = CollectionUtils.isEmpty(field.getTableRelationSources())
                                            ? field.getTableRelationTargets().stream().map(TableRelation::getSource)
                                            .map(Field::getName)
                                            .collect(Collectors.toList())
                                            .get(0)
                                            : field.getTableRelationSources().stream().map(TableRelation::getTarget)
                                            .map(Field::getName)
                                            .collect(Collectors.toList())
                                            .get(0);
                                    List<Object> sourceValues = ((List<Object>) result.get(tableName).get(GenerateConstant.VALUES))
                                            .stream()
                                            .map(obj -> ((HashMap<String, Object>) obj).get(fieldName))
                                            .collect(Collectors.toList());
                                    map.put(field.getName(), sourceValues.get(random.nextInt(sourceValues.size())));
                                }

                            }
                        }
                    }
                });
                values.add(map);
                mapIndexAndValues.put(GenerateConstant.VALUES, values);
            }


            // Thêm table vô list kết quả
            result.put(table.getName(), mapIndexAndValues);
        });

        return result;
    }

    public List<Map<String, String>> generate(Table table, Integer row) {
        boolean unique = true;
        List<Map<String, String>> result = new ArrayList<>();
        Random random = new Random();
        List<Field> fields = table.getFields().stream().peek(field -> {
            GenerateType generateType = field.getGenerateType();
            generateType.setSources(sourceRepository.findAllByGenerateType(generateType));
            field.setGenerateType(generateType);
        }).toList();
        Map<String, List<Integer>> mapDuplicate = new HashMap<>();
        fields.forEach(field -> mapDuplicate.put(field.getName(), new ArrayList<>()));
        while (result.size() < row) {
            Map<String, String> map = new HashMap<>();
            fields.forEach(field -> {
                int index = random.nextInt(0, field.getGenerateType().getSources().size());
                if (random.nextInt(0, 100) > field.getOption().getBlank()) {
                    if (unique && mapDuplicate.get(field.getName()).contains(index)) {
                        return;
                    }
                    map.put(field.getName(), field.getGenerateType().getSources().get(index).getValue());
                } else {
                    map.put(field.getName(), null);
                }
                mapDuplicate.get(field.getName()).add(index);
            });
            result.add(map);
        }
        return result;
    }
}
