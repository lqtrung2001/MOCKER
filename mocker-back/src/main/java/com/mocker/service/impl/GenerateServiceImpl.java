package com.mocker.service.impl;

import com.mocker.constant.GenerateConstant;
import com.mocker.domain.exception.BadRequestException;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.model.entity.Field;
import com.mocker.domain.model.entity.GenerateType;
import com.mocker.domain.model.entity.Source;
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
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
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
        if (table == null) {
            throw new NotFoundException(tableId);
        }
        return generate(table, row);
    }

    @Override
    public List<Map<String, String>> generateWithTable(Table table, Integer row) {
        return generate(table, row);
    }

    @SuppressWarnings("unchecked")
    @Override
    public Map<String, Map<String, Object>> generateWithSchema(UUID id) {
        int numberGenerate = 5;
        if (numberGenerate <= 0) {
            throw new BadRequestException("Row must be greater than zero");
        }
        List<Table> tables = tableRepository.findAllBySchema(id);
        List<Table> sortedTables = new ArrayList<>(tables);
        tables.forEach(table -> {
            List<Field> fields = fieldRepository.getFieldsByTable(table.getId());
            fields.forEach(field -> {
                //check relation source
                // TODO: Do Quoc Viet: check duplicates code
                field.getTableRelationSources().forEach(tableRelation -> {
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
                });
                // check relation target
                field.getTableRelationTargets().forEach(tableRelation -> {
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
                });
            });
        });
        Map<String, Map<String, Object>> result = new HashMap<>();
        AtomicInteger counter = new AtomicInteger();
        Map<String, List<Object>> mapCircleRelationValue = new HashMap<>();
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
            List<Object> sourceValuesCircle = new ArrayList<>();
            Map<UUID, Set<String>> mapFieldsCommonSource = new HashMap<>();
            for (int i = 0; i < fields.size(); i++) {
                if (fields.get(i).getTableRelationTargets().size() > 0) {
                    List<UUID> fieldFirstIds = fields.get(i).getTableRelationTargets().stream().map(TableRelation::getSource)
                            .map(Field::getId).collect(Collectors.toList());
                    for (UUID fieldId1 : fieldFirstIds) {
                        Set<String> fieldHaveCommon = new HashSet<>();
                        for (int j = i + 1; j < fields.size(); j++) {
                            if (fields.get(j).getTableRelationTargets().size() > 0) {
                                List<UUID> fieldNextIds = fields.get(j).getTableRelationTargets().stream().map(TableRelation::getSource)
                                        .map(Field::getId).collect(Collectors.toList());
                                for (UUID fieldId2 : fieldNextIds) {
                                    if (fieldId1.equals(fieldId2)) {
                                        fieldHaveCommon.add(fields.get(i).getName());
                                        fieldHaveCommon.add(fields.get(j).getName());
                                    }
                                }
                            }
                        }
                        if (!mapFieldsCommonSource.containsKey(fieldId1)) {
                            mapFieldsCommonSource.put(fieldId1, fieldHaveCommon);
                        }
                    }
                }
            }
            while (row++ < numberGenerate) {
                Map<String, Object> map = new HashMap<>();
                fields.forEach(field -> {
                    // [MOC-49]: normal insert
                    // TODO: Do Quoc Viet check number of field's relations
                    // relationship: not ONE_TO_ONE and not ONE_TO_MANY
                    if ((CollectionUtils.isEmpty(field.getTableRelationSources()) && CollectionUtils.isEmpty(field.getTableRelationTargets()))
                            || ((!CollectionUtils.isEmpty(field.getTableRelationSources())
                            && field.getTableRelationSources().stream().map(TableRelation::getRelationType).noneMatch(RelationType::isRelationOneTo))
                            && (!CollectionUtils.isEmpty(field.getTableRelationTargets()))
                            && (field.getTableRelationTargets().stream().map(TableRelation::getRelationType).noneMatch(RelationType.ONE_TO_ONE::equals))
                            || (!CollectionUtils.isEmpty(field.getTableRelationTargets()) && CollectionUtils.isEmpty(field.getTableRelationSources())
                            && (field.getTableRelationTargets().stream().map(TableRelation::getRelationType).anyMatch(RelationType.ONE_TO_MANY::equals))))) {
                        int index = random.nextInt(field.getGenerateType().getSources().size());
                        map.put(field.getName(), field.getGenerateType().getSources().get(index).getValue());
                    } else {
                        // TODO: Do Quoc Viet check number of field's relations
                        // relationship:  ONE_TO_MANY
                        if ((!CollectionUtils.isEmpty(field.getTableRelationSources())
                                && field.getTableRelationSources().stream().map(TableRelation::getRelationType).allMatch(RelationType.ONE_TO_MANY::equals))) {
                            // check circle relationship
                            if (!CollectionUtils.isEmpty(field.getTableRelationTargets())
                                    && (field.getTableRelationTargets().stream().map(TableRelation::getRelationType).anyMatch(RelationType.ONE_TO_MANY::equals))
                                    && ((Integer) mapIndexAndValues.get(GenerateConstant.INDEX) == 0)) {
                                if (CollectionUtils.isEmpty(mapCircleRelationValue.get(field.getGenerateType().getCode()))) {
                                    List<Object> obj = new ArrayList<>();
                                    for (int i = 0; i < numberGenerate; i++) {
                                        int index = random.nextInt(field.getGenerateType().getSources().size());
                                        obj.add(field.getGenerateType().getSources().get(index).getValue());
                                    }
                                    mapCircleRelationValue.put(field.getGenerateType().getCode(), obj);
                                }
                                if (sourceValuesCircle.isEmpty()) {
                                    sourceValuesCircle.addAll(mapCircleRelationValue.get(field.getGenerateType().getCode()));
                                }
                                Object value = sourceValuesCircle.get(random.nextInt(sourceValuesCircle.size()));
                                sourceValuesCircle.remove(value);
                                map.put(field.getName(), value);
                            } else {
                                // if doesn't exist circle relationship import ONE_TO_MANY normal'
                                List<String> listFieldName = field.getTableRelationSources().stream().map(TableRelation::getTarget)
                                        .map(Field::getName)
                                        .collect(Collectors.toList());
                                listFieldName.forEach(fieldName -> {
                                    if (CollectionUtils.isEmpty(mapRelationValue.get(fieldName))) {
                                        List<String> listTableName = field.getTableRelationSources().stream().map(TableRelation::getTarget)
                                                .map(Field::getTable)
                                                .map(Table::getName)
                                                .collect(Collectors.toList());
                                        listTableName.forEach(tableName -> mapRelationValue.put(fieldName, ((List<Object>) result.get(tableName).get(GenerateConstant.VALUES))
                                                .stream()
                                                .map(obj -> ((HashMap<String, Object>) obj).get(fieldName))
                                                .collect(Collectors.toList())));
                                    }
                                });
                                List<Object> sourceValues = new ArrayList<>(mapRelationValue.get(listFieldName.get(0)));
                                listFieldName.forEach(fieldName -> sourceValues.retainAll(mapRelationValue.get(fieldName)));
                                List<Object> sourceValuesNoCommon = new ArrayList<>(mapRelationValue.get(listFieldName.get(0)));
                                map.put(field.getName(), (sourceValues.size() > 0) ? sourceValues.get(random.nextInt(sourceValues.size())) : sourceValuesNoCommon.get(random.nextInt(sourceValuesNoCommon.size())));
                            }
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
                            } else {
                                // Relation MANY-TO-ONE
                                if ((!CollectionUtils.isEmpty(field.getTableRelationTargets())
                                        && field.getTableRelationSources().stream().map(TableRelation::getRelationType).allMatch(RelationType.MANY_TO_ONE::equals))) {
                                    String fieldName = field.getTableRelationTargets().stream().map(TableRelation::getSource)
                                            .map(Field::getName)
                                            .collect(Collectors.toList())
                                            .get(0);
                                    if (CollectionUtils.isEmpty(mapRelationValue.get(fieldName))) {
                                        String tableName = field.getTableRelationTargets().stream().map(TableRelation::getSource)
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
                                }
                            }
                        }
                    }
                });
                values.add(map);
                mapIndexAndValues.put(GenerateConstant.VALUES, values);
            }
            mapFieldsCommonSource.forEach((uuid, strings) -> {
                List<Object> roots = new ArrayList<>();
                strings.forEach(common -> {
                    if (roots.isEmpty()) {
                        values.forEach(value -> roots.add(value.get(common)));
                    }
                    int middle = numberGenerate / 2;
                    for (int i = 0; i <= middle; i++) {
                        values.get(i).put(common, roots.get(i));
                    }
                });
            });
            // add table to list result
            result.put(table.getName(), mapIndexAndValues);
        });

        return result;
    }

    public List<Map<String, String>> generate(Table table, Integer row) {
        if (row <= 0) {
            throw new BadRequestException("Row must be greater than zero");
        }
        if (CollectionUtils.isEmpty(table.getFields())) {
            throw new BadRequestException("The table's fields are empty");
        }
        Set<String> uniqueFields = new HashSet<>();
        table.getFields().forEach(field -> {
            if (field.getOption().isUnique() && field.getOption().getBlank() > 0){
                throw new BadRequestException("The unique option and the blank option are conflict");
            }
            if (uniqueFields.contains(field.getName())) {
                throw new BadRequestException("The table's fields are duplicate");
            }
            if (field.getName().contains(" ")) {
                throw new BadRequestException("The table's fields have spacing");
            }
            uniqueFields.add(field.getName());
        });

        List<Map<String, String>> result = new ArrayList<>();
        Random random = new Random();
        List<Field> fields = table.getFields().stream().peek(field -> {
            GenerateType generateType = field.getGenerateType();
            List<Source> sources = sourceRepository.findAllByGenerateType(generateType);
            long limit = sources.stream().map(Source::getValue).distinct().count();
            if (field.getOption().isUnique() && limit < row) {
                throw new BadRequestException("The number of records isn't enough at the moment, please try again!");
            }
            generateType.setSources(sources);
            field.setGenerateType(generateType);
        }).toList();

        Map<String, List<String>> mapDuplicate = new HashMap<>();
        fields.forEach(field -> mapDuplicate.put(field.getName(), new ArrayList<>()));
        while (result.size() < row) {
            Map<String, String> map = new HashMap<>();
            for (Field field : fields) {
                if (!field.getOption().isUnique() && random.nextInt(0, 100) < field.getOption().getBlank()) {
                    map.put(field.getName(), null);
                } else {
                    int index;
                    String value;
                    do {
                        index = random.nextInt(0, field.getGenerateType().getSources().size());
                        value = field.getGenerateType().getSources().get(index).getValue();
                    }
                    while (field.getOption().isUnique() && mapDuplicate.get(field.getName()).contains(value));
                    map.put(field.getName(), value);
                    mapDuplicate.get(field.getName()).add(value);
                }
            }
            result.add(map);

        }
        return result;
    }
}
