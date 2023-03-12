package com.mocker.controller.schema;

import com.mocker.controller.table.ApiTableMapper;
import com.mocker.domain.dto.GroupDto;
import com.mocker.domain.dto.ProjectDto;
import com.mocker.domain.dto.SchemaDto;
import com.mocker.domain.model.entity.*;
import org.mapstruct.IterableMapping;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

import java.util.List;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring")
public interface ApiSchemaMapper {

    Schema map(SchemaDto schemaDto);

    @IterableMapping(qualifiedByName = "mapIgnoreTables")
    List<SchemaDto> map(List<Schema> schemas);

    @Named("mapIgnoreTables")
    @Mapping(target = "tables", ignore = true)
    SchemaDto map(Schema schema);

    SchemaDto mapFetchTables(Schema schema);

    @Mapping(target = "schema", ignore = true)
    com.mocker.domain.dto.TableDto map(Table table);

    @Mapping(target = "generateTypes", ignore = true)
    com.mocker.domain.dto.SQLTypeDto map(SQLType sqlType);

    @Mapping(target = "category", ignore = true)
    @Mapping(target = "sqlTypes", ignore = true)
    @Mapping(target = "sources", ignore = true)
    com.mocker.domain.dto.GenerateTypeDto map(GenerateType generateType);

    @Mapping(target = "field", ignore = true)
    com.mocker.domain.dto.OptionDto map(Option option);

    @Mapping(target = "table", ignore = true)
    com.mocker.domain.dto.FieldDto map(Field field);

    @Mapping(target = "schemas", ignore = true)
    ProjectDto map(Project project);

    @Mapping(target = "groupMembers", ignore = true)
    @Mapping(target = "projects", ignore = true)
    GroupDto map(Group group);
}
