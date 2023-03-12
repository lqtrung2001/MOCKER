package com.mocker.controller.schema;

import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.FieldDto;
import com.mocker.domain.dto.GenerateTypeDto;
import com.mocker.domain.dto.GroupDto;
import com.mocker.domain.dto.OptionDto;
import com.mocker.domain.dto.ProjectDto;
import com.mocker.domain.dto.SQLTypeDto;
import com.mocker.domain.dto.SchemaDto;
import com.mocker.domain.dto.TableDto;
import com.mocker.domain.model.entity.Field;
import com.mocker.domain.model.entity.GenerateType;
import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.Option;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.SQLType;
import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.Table;
import org.mapstruct.IterableMapping;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

import java.util.List;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {ApiAbstractMapper.class})
public interface ApiSchemaMapper {

    Schema map(SchemaDto schemaDto);

    @IterableMapping(qualifiedByName = "mapIgnoreTables")
    List<SchemaDto> map(List<Schema> schemas);

    @Named("mapIgnoreTables")
    @Mapping(target = "tables", ignore = true)
    SchemaDto map(Schema schema);

    SchemaDto mapFetchTables(Schema schema);

    @Mapping(target = "schema", ignore = true)
    TableDto map(Table table);

    @Mapping(target = "generateTypes", ignore = true)
    SQLTypeDto map(SQLType sqlType);

    @Mapping(target = "category", ignore = true)
    @Mapping(target = "sqlTypes", ignore = true)
    @Mapping(target = "sources", ignore = true)
    GenerateTypeDto map(GenerateType generateType);

    @Mapping(target = "field", ignore = true)
    OptionDto map(Option option);

    @Mapping(target = "table", ignore = true)
    FieldDto map(Field field);

    @Mapping(target = "schemas", ignore = true)
    ProjectDto map(Project project);

    @Mapping(target = "groupMembers", ignore = true)
    @Mapping(target = "projects", ignore = true)
    GroupDto map(Group group);
}
