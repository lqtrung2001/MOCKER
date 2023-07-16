package com.mocker.service.impl;

import com.mocker.constant.GenerateConstant;
import com.mocker.domain.exception.BadRequestException;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.model.entity.*;
import com.mocker.domain.model.entity.enumeration.RelationType;
import com.mocker.repository.FieldRepository;
import com.mocker.repository.SourceRepository;
import com.mocker.repository.TableRepository;
import com.mocker.service.GenerateService;
import com.mocker.service.PermissionService;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.*;
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
    private final PermissionService permissionService;

    @Override
    public List<Map<String, String>> generateWithTableId(UUID tableId) {
        permissionService.checkPermission(tableId, Table.class);
        Table table = Optional.ofNullable(tableRepository.findOneFetchFields(tableId))
                .orElseThrow(() -> new NotFoundException(tableId));
        return generate(table);
    }

    @Override
    public List<Map<String, String>> generateWithTable(Table table) {
        return generate(table);
    }

    @SuppressWarnings("unchecked")
    @Override
    public Map<String, Map<String, Object>> generateWithSchema(UUID id) {
        permissionService.checkPermission (id, Schema.class);
        List<Table> tables = tableRepository.findAllBySchema(id);
        List<Table> sortedTables = new ArrayList<>(tables);
        for (int i = 0; i < sortedTables.size(); i++) {
            tables.forEach(table -> {
                List<Field> fields = fieldRepository.getFieldsByTable(table.getId());
                fields.forEach(field -> {
                    //check relation source
                    field.getTableRelationSources().forEach(tableRelation -> {
                        int sourceIndex = sortedTables.stream().map(Table::getId).toList().indexOf(tableRelation.getSource().getTable().getId());
                        int targetIndex = sortedTables.stream().map(Table::getId).toList().indexOf(tableRelation.getTarget().getTable().getId());
                        switch (tableRelation.getRelationType()) {
                            case ONE_TO_MANY -> {
                                if (sourceIndex > targetIndex) {
                                    if (sourceIndex == sortedTables.size() - 1 && targetIndex == 0) {
                                        sortedTables.add(targetIndex, sortedTables.remove(sourceIndex));
                                    }else {
                                        sortedTables.add(sourceIndex, sortedTables.remove(targetIndex));
                                    }
                                }
                            }
                            case MANY_TO_ONE -> {
                                if (sourceIndex < targetIndex) {
                                    sortedTables.add(sourceIndex, sortedTables.remove(targetIndex));
                                }
                            }
                        }
                    });
                    // check relation target
//                field.getTableRelationTargets().forEach(tableRelation -> {
//                    int sourceIndex = sortedTables.stream().map(Table::getId).toList().indexOf(tableRelation.getSource().getTable().getId());
//                    int targetIndex = sortedTables.stream().map(Table::getId).toList().indexOf(tableRelation.getTarget().getTable().getId());
//                    switch (tableRelation.getRelationType()) {
//                        case ONE_TO_MANY -> {
//                            if (sourceIndex > targetIndex) {
//                                sortedTables.add(targetIndex, sortedTables.remove(sourceIndex));
//                            }
//                        }
//                        case MANY_TO_ONE -> {
//                            if (sourceIndex < targetIndex) {
//                                sortedTables.add(targetIndex, sortedTables.remove(sourceIndex));
//                            }
//                        }
//                    }
//                });
                });
            });
        }
        Map<String, Map<String, Object>> result = new HashMap<>();
        AtomicInteger counter = new AtomicInteger();
        Map<String, List<Object>> mapCircleRelationValue = new HashMap<>();
        Map<UUID, Set<UUID>> mapFieldsCommonSourceSchema = new HashMap<>();
        Map<UUID, List<Object>> mapValuesCommonSchema = new HashMap<>();
        sortedTables.forEach(table -> {
            List<Field> fields = fieldRepository.getFieldsByTable(table.getId());
            for (Field value : fields) {
                if (value.getTableRelationTargets().size() > 0) {
                    List<Integer> listRowSources = value.getTableRelationTargets().stream().map(TableRelation::getSource)
                            .map(field -> field.getTable().getRow()).toList();
                    Integer rowTarget = value.getTableRelationTargets().stream().map(TableRelation::getTarget)
                            .map(field -> field.getTable().getRow()).toList().get(0);
                    listRowSources.forEach(source -> {
                        if (source > rowTarget) {
                            throw new BadRequestException("Number row of source much less than number row of target");
                        }
                    });
                    UUID source = value.getTableRelationTargets().stream().map(TableRelation::getSource).map(Field::getId).toList().get(0);
                    Set<UUID> targets = mapFieldsCommonSourceSchema.computeIfAbsent(source, k -> new HashSet<>());
                    UUID target = value.getTableRelationTargets().stream().map(TableRelation::getTarget).map(Field::getId).toList().get(0);
                    targets.add(target);
                    mapFieldsCommonSourceSchema.put(source, targets);
                    mapValuesCommonSchema.put(source, null);
                }
            }
        });
        sortedTables.forEach(table -> {
            Integer numberRowsOfTable = table.getRow();
            Map<String, Object> mapIndexAndValues = new HashMap<>();
            mapIndexAndValues.put(GenerateConstant.INDEX, counter.getAndIncrement());
            List<Map<String, Object>> values = new ArrayList<>();
            List<Field> fields = fieldRepository.getFieldsByTable(table.getId()).stream().peek(field -> {
                GenerateType generateType = field.getGenerateType();
                List<Source> sources = sourceRepository.findAllByGenerateType(generateType);
                long limit = sources.stream().map(Source::getValue).distinct().count();
                if (field.getOption().isUnique() && limit < numberRowsOfTable) {
                    throw new BadRequestException("The number of records isn't enough at the moment, please try again!");
                }
                generateType.setSources(sources);
                field.setGenerateType(generateType);
            }).toList();
            int row = 0;
            Random random = new Random();
            Map<String, List<Object>> mapRelationValue = new HashMap<>();
            List<Object> sourceValuesCircle = new ArrayList<>();
            Map<UUID, Set<String>> mapFieldsCommonSourceTable = new HashMap<>();
            for (int i = 0; i < fields.size(); i++) {
                if (fields.get(i).getTableRelationTargets().size() > 0) {
                    List<UUID> fieldFirstIds = fields.get(i).getTableRelationTargets().stream().map(TableRelation::getSource)
                            .map(Field::getId).toList();
                    List<Integer> listRowSources = fields.get(i).getTableRelationTargets().stream().map(TableRelation::getSource)
                            .map(field -> field.getTable().getRow()).toList();
                    Integer rowTarget = fields.get(i).getTableRelationTargets().stream().map(TableRelation::getTarget)
                            .map(field -> field.getTable().getRow()).toList().get(0);
                    listRowSources.forEach(source -> {
                        if (source > rowTarget) {
                            throw new BadRequestException("Number row of source much less than number row of target.");
                        }
                    });
                    for (UUID fieldId1 : fieldFirstIds) {
                        Set<String> fieldHaveCommon = new HashSet<>();
                        for (int j = i + 1; j < fields.size(); j++) {
                            if (fields.get(j).getTableRelationTargets().size() > 0) {
                                List<UUID> fieldNextIds = fields.get(j).getTableRelationTargets().stream().map(TableRelation::getSource)
                                        .map(Field::getId).toList();
                                for (UUID fieldId2 : fieldNextIds) {
                                    if (fieldId1.equals(fieldId2)) {
                                        fieldHaveCommon.add(fields.get(i).getName());
                                        fieldHaveCommon.add(fields.get(j).getName());
                                    }
                                }
                            }
                        }
                        if (!mapFieldsCommonSourceTable.containsKey(fieldId1)) {
                            mapFieldsCommonSourceTable.put(fieldId1, fieldHaveCommon);
                        }
                    }
                }
            }

            Map<String, List<Object>> mapDuplicate = new HashMap<>();
            fields.forEach(field -> mapDuplicate.put(field.getName(), new ArrayList<>()));
            while (row++ < numberRowsOfTable) {
                Map<String, Object> map = new HashMap<>();
                int finalRow = row - 1;
                fields.forEach(field -> {
                    // [MOC-49]: normal insert
                    // TODO: Do Quoc Viet check number of field's relations
                    // relationship: not ONE_TO_ONE and not ONE_TO_MANY
                    if (CollectionUtils.isEmpty(field.getTableRelationTargets())) {
                        if (!field.getOption().isUnique() && random.nextInt(100) < field.getOption().getBlank()) {
                            map.put(field.getName(), null);
                        } else {
                            int index;
                            String value;
                            if (GenerateConstant.NATURAL_ID.equals(field.getGenerateType().getCode())) {
                                value = String.valueOf(finalRow + 1);
                            } else if (GenerateConstant.TECHNICAL_ID.equals(field.getGenerateType().getCode())) {
                                value = UUID.randomUUID().toString();
                            } else {
                                do {
                                    index = random.nextInt(field.getGenerateType().getSources().size());
                                    value = field.getGenerateType().getSources().get(index).getValue();
                                }
                                while (field.getOption().isUnique() && mapDuplicate.get(field.getName()).contains(value));
                            }
                            map.put(field.getName(), value);
                            mapDuplicate.get(field.getName()).add(value);
                        }
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
                                    List<Object> objects = new ArrayList<>();
                                    for (int i = 0; i < numberRowsOfTable; i++) {
                                        if (!field.getOption().isUnique() && random.nextInt(100) < field.getOption().getBlank()) {
                                            objects.add(null);
                                        } else {
                                            int index;
                                            String value;
                                            if (GenerateConstant.NATURAL_ID.equals(field.getGenerateType().getCode())) {
                                                value = String.valueOf(finalRow +1 ) ;
                                            } else if (GenerateConstant.TECHNICAL_ID.equals(field.getGenerateType().getCode())) {
                                                value = UUID.randomUUID().toString();
                                            } else {
                                                do {
                                                    index = random.nextInt(field.getGenerateType().getSources().size());
                                                    value = field.getGenerateType().getSources().get(index).getValue();
                                                }
                                                while (field.getOption().isUnique() && mapDuplicate.get(field.getName()).contains(value));
                                            }
                                            objects.add(value);
                                            mapDuplicate.get(field.getName()).add(value);
                                        }
                                    }
                                    mapCircleRelationValue.put(field.getGenerateType().getCode(), objects);
                                }
                                if (sourceValuesCircle.isEmpty()) {
                                    sourceValuesCircle.addAll(mapCircleRelationValue.get(field.getGenerateType().getCode()));
                                }
                                Object value = sourceValuesCircle.get(random.nextInt(sourceValuesCircle.size()));
                                sourceValuesCircle.remove(value);
                                map.put(field.getName(), value);
                            } else {
                                // if it doesn't exist circle relationship import ONE_TO_MANY normal
                                List<String> listFieldName = field.getTableRelationSources().stream().map(TableRelation::getTarget)
                                        .map(Field::getName)
                                        .toList();
                                listFieldName.forEach(fieldName -> {
                                    if (CollectionUtils.isEmpty(mapRelationValue.get(fieldName))) {
                                        List<String> listTableName = field.getTableRelationSources().stream().map(TableRelation::getTarget)
                                                .map(Field::getTable)
                                                .map(Table::getName)
                                                .toList();
                                        listTableName.forEach(tableName -> {
                                            List<String> fieldsByTable = fieldRepository.getFieldsByTable(tableRepository.findOneByName(tableName).getId()).stream().map(Field::getName).toList();
                                            if (fieldsByTable.contains(fieldName)) {
                                                List<Object> collect = ((List<Object>) result.get(tableName).get(GenerateConstant.VALUES))
                                                        .stream()
                                                        .map(obj -> ((HashMap<String, Object>) obj).get(fieldName))
                                                        .collect(Collectors.toList());
                                                mapRelationValue.put(fieldName, collect);
                                            }

                                        });
                                    }
                                });
                                List<Object> sourceValues = new ArrayList<>(mapRelationValue.get(listFieldName.get(0)));
                                listFieldName.forEach(fieldName -> sourceValues.retainAll(mapRelationValue.get(fieldName)));
                                List<Object> sourceValuesNoCommon = new ArrayList<>(mapRelationValue.get(listFieldName.get(0)));
                                Object value;
                                if (sourceValues.size() > 0) {
                                    if (!field.getOption().isUnique() && random.nextInt(100) < field.getOption().getBlank()) {
                                        value = null;
                                    } else {
                                        do {
                                            value = sourceValues.get(random.nextInt(sourceValues.size()));
                                        }
                                        while (field.getOption().isUnique() && mapDuplicate.get(field.getName()).contains(value));
                                        mapDuplicate.get(field.getName()).add(value);
                                    }
                                } else {
                                    if (!field.getOption().isUnique() && random.nextInt(100) < field.getOption().getBlank()) {
                                        value = null;
                                    } else {
                                        do {
                                            value = sourceValuesNoCommon.get(random.nextInt(sourceValuesNoCommon.size()));
                                        }
                                        while (field.getOption().isUnique() && mapDuplicate.get(field.getName()).contains(value));
                                        mapDuplicate.get(field.getName()).add(value);
                                    }
                                }
                                map.put(field.getName(), value);
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
                                        .toList()
                                        .get(0)
                                        : field.getTableRelationSources().stream()
                                        .map(TableRelation::getTarget)
                                        .map(Field::getTable).map(Table::getName)
                                        .toList()
                                        .get(0);
                                if (result.get(tableName) == null) {
                                    if (!field.getOption().isUnique() && random.nextInt(100) < field.getOption().getBlank()) {
                                        map.put(field.getName(), null);
                                    } else {
                                        int index;
                                        String value;
                                        if (GenerateConstant.NATURAL_ID.equals(field.getGenerateType().getCode())) {
                                            value = String.valueOf(finalRow +1);
                                        } else if (GenerateConstant.TECHNICAL_ID.equals(field.getGenerateType().getCode())) {
                                            value = UUID.randomUUID().toString();
                                        } else {
                                            do {
                                                index = random.nextInt(field.getGenerateType().getSources().size());
                                                value = field.getGenerateType().getSources().get(index).getValue();
                                            }
                                            while (field.getOption().isUnique() && mapDuplicate.get(field.getName()).contains(value));
                                        }
                                        map.put(field.getName(), value);
                                        mapDuplicate.get(field.getName()).add(value);
                                    }
                                } else {
                                    String fieldName = CollectionUtils.isEmpty(field.getTableRelationSources())
                                            ? field.getTableRelationTargets().stream().map(TableRelation::getSource)
                                            .map(Field::getName)
                                            .toList()
                                            .get(0)
                                            : field.getTableRelationSources().stream().map(TableRelation::getTarget)
                                            .map(Field::getName)
                                            .toList()
                                            .get(0);
                                    List<Object> sourceValues = ((List<Object>) result.get(tableName).get(GenerateConstant.VALUES))
                                            .stream()
                                            .map(obj -> ((HashMap<String, Object>) obj).get(fieldName))
                                            .toList();
                                    Object value;
                                    if (!field.getOption().isUnique() && random.nextInt(100) < field.getOption().getBlank()) {
                                        value = null;
                                    } else {
                                        do {
                                            value = sourceValues.get(random.nextInt(sourceValues.size()));
                                        }
                                        while (field.getOption().isUnique() && mapDuplicate.get(field.getName()).contains(value));
                                        mapDuplicate.get(field.getName()).add(value);
                                    }
                                    map.put(field.getName(), value);
                                }
                            } else {
                                // Relation MANY-TO-ONE
                                if ((!CollectionUtils.isEmpty(field.getTableRelationTargets())
                                        && field.getTableRelationSources().stream().map(TableRelation::getRelationType).allMatch(RelationType.MANY_TO_ONE::equals))) {
                                    String fieldName = field.getTableRelationTargets().stream().map(TableRelation::getSource)
                                            .map(Field::getName)
                                            .toList()
                                            .get(0);
                                    if (CollectionUtils.isEmpty(mapRelationValue.get(fieldName))) {
                                        String tableName = field.getTableRelationTargets().stream().map(TableRelation::getSource)
                                                .map(Field::getTable)
                                                .map(Table::getName)
                                                .toList()
                                                .get(0);
                                        if (result.get(tableName) == null) {

                                            int index;
                                            String value;
                                            if (GenerateConstant.NATURAL_ID.equals(field.getGenerateType().getCode())) {
                                                value = String.valueOf(finalRow +1);
                                            } else if (GenerateConstant.TECHNICAL_ID.equals(field.getGenerateType().getCode())) {
                                                value = UUID.randomUUID().toString();
                                            } else {
                                                do {
                                                    index = random.nextInt(field.getGenerateType().getSources().size());
                                                    value = field.getGenerateType().getSources().get(index).getValue();
                                                }
                                                while (field.getOption().isUnique() && mapDuplicate.get(field.getName()).contains(value));
                                            }
                                            map.put(field.getName(), value);
//                                            mapDuplicate.get(field.getName()).add(value);
//                                            List<Object> temp = new ArrayList<>();
//                                            mapRelationValue.put(fieldName, temp);
                                        }else {
                                            mapRelationValue.put(fieldName, ((List<Object>) result.get(tableName).get(GenerateConstant.VALUES))
                                                    .stream()
                                                    .map(obj -> ((HashMap<String, Object>) obj).get(fieldName))
                                                    .collect(Collectors.toList()));
                                            List<Object> sourceValues = mapRelationValue.get(fieldName);
                                            Object value;
                                            if (!field.getOption().isUnique() && random.nextInt(100) < field.getOption().getBlank()) {
                                                value = null;
                                            } else {
                                                do {
                                                    value = sourceValues.get(random.nextInt(sourceValues.size()));
                                                }
                                                while (field.getOption().isUnique() && mapDuplicate.get(field.getName()).contains(value));
                                                mapDuplicate.get(field.getName()).add(value);
                                            }
                                            map.put(field.getName(), value);
                                        }
                                    } else {
                                        List<Object> sourceValues = mapRelationValue.get(fieldName);
                                        Object value;
                                        if (!field.getOption().isUnique() && random.nextInt(100) < field.getOption().getBlank()) {
                                            value = null;
                                        } else {
                                            do {
                                                value = sourceValues.get(random.nextInt(sourceValues.size()));
                                            }
                                            while (field.getOption().isUnique() && mapDuplicate.get(field.getName()).contains(value));
                                            mapDuplicate.get(field.getName()).add(value);
                                        }
                                        map.put(field.getName(), value);
                                    }

                                }
                            }
                        }
                    }
                });
                values.add(map);
                mapIndexAndValues.put(GenerateConstant.VALUES, values);
            }
            mapFieldsCommonSourceSchema.forEach((fieldCommonId, setFields) -> {
                List<String> nameFields = fields.stream().map(Field::getName).toList();
                List<Object> roots = new ArrayList<>();
                setFields.forEach(setField -> {
                    Field fieldSource = fieldRepository.findById(setField).orElseThrow(() -> new NotFoundException("The field not found"));
                    if (nameFields.contains(fieldSource.getName())) {
                        if (mapValuesCommonSchema.get(fieldCommonId) == null) {
                            values.forEach(value -> roots.add(value.get(fieldSource.getName())));
                            mapValuesCommonSchema.put(fieldCommonId, roots);
                        } else {
                            int rowCommon = tableRepository.getTableByFieldId(fieldCommonId).getRow();
                            for (int i = 0; i < rowCommon; i++) {
                                List<Object> valueCommon = mapValuesCommonSchema.get(fieldCommonId);
                                values.get(i).put(fieldSource.getName(), valueCommon.get(i));
                            }
                        }

                    }
                });
            });
            mapFieldsCommonSourceTable.forEach((uuid, strings) -> {
                List<Object> roots = new ArrayList<>();
                strings.forEach(common -> {
                    if (roots.isEmpty()) {
                        values.forEach(value -> roots.add(value.get(common)));
                    }
                    int rowCommon = tableRepository.getTableByFieldId(uuid).getRow();
                    for (int i = 0; i <= rowCommon; i++) {
                        values.get(i).put(common, roots.get(i));
                    }
                });
            });

            // add table to list result
            result.put(table.getName(), mapIndexAndValues);
        });

        return result;
    }

    public List<Map<String, String>> generate(Table table) {
        if (table.getRow() <= 0) {
            throw new BadRequestException("Row must be greater than zero.");
        }
        if (CollectionUtils.isEmpty(table.getFields())) {
            throw new BadRequestException("The table's fields are empty.");
        }
        Set<String> uniqueFields = new HashSet<>();
        table.getFields().forEach(field -> {
            if (field.getOption().isUnique() && field.getOption().getBlank() > 0) {
                throw new BadRequestException("The unique option and the blank option are conflict.");
            }
            if (uniqueFields.contains(field.getName())) {
                throw new BadRequestException("The table's fields are duplicate.");
            }
            if (field.getName().contains(StringUtils.SPACE)) {
                throw new BadRequestException("The table's fields have spacing.");
            }
            uniqueFields.add(field.getName());
        });

        List<Map<String, String>> result = new ArrayList<>();
        Random random = new Random();
        List<Field> fields = table.getFields().stream().peek(field -> {
            GenerateType generateType = field.getGenerateType();
            List<Source> sources = sourceRepository.findAllByGenerateType(generateType);
            long limit = sources.stream().map(Source::getValue).distinct().count();
            if (field.getOption().isUnique() && limit < table.getRow()) {
                throw new BadRequestException("The number of records isn't enough at the moment, please try again!");
            }
            generateType.setSources(sources);
            field.setGenerateType(generateType);
        }).toList();

        Map<String, List<String>> mapDuplicate = new HashMap<>();
        fields.forEach(field -> mapDuplicate.put(field.getName(), new ArrayList<>()));
        while (result.size() < table.getRow()) {
            Map<String, String> map = new HashMap<>();
            for (Field field : fields) {
                if (!field.getOption().isUnique()
                        && random.nextInt(100) < field.getOption().getBlank()) {
                    map.put(field.getName(), null);
                } else {
                    int index;
                    String value;
                    if (GenerateConstant.NATURAL_ID.equals(field.getGenerateType().getCode())) {
                        value = String.valueOf(result.size() + 1);
                    } else if (GenerateConstant.TECHNICAL_ID.equals(field.getGenerateType().getCode())) {
                        value = UUID.randomUUID().toString();
                    } else {
                        do {
                            index = random.nextInt(field.getGenerateType().getSources().size());
                            value = field.getGenerateType().getSources().get(index).getValue();
                        }
                        while (field.getOption().isUnique() && mapDuplicate.get(field.getName()).contains(value));
                    }
                    map.put(field.getName(), value);
                    mapDuplicate.get(field.getName()).add(value);
                }
            }
            result.add(map);

        }
        return result;
    }
}
