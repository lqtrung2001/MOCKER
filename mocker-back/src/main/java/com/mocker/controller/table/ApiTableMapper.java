package com.mocker.controller.table;

import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.FieldDto;
import com.mocker.domain.dto.GroupDto;
import com.mocker.domain.dto.ProjectDto;
import com.mocker.domain.dto.SchemaDto;
import com.mocker.domain.dto.TableDto;
import com.mocker.domain.model.entity.Field;
import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.Table;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

/**
 * @author Do Quoc Viet
 * @author Luong Quoc Trung
 */

@Mapper(componentModel = "spring", uses = {ApiAbstractMapper.class})
public interface ApiTableMapper {

    TableDto mapFetchFields(Table table);

    @Mapping(target = "table", ignore = true)
    FieldDto map(Field field);

    @Mapping(target = "projects", ignore = true)
    @Mapping(target = "groupMembers", ignore = true)
    GroupDto map(Group group);

    @Mapping(target = "tables", ignore = true)
    SchemaDto map(Schema schema);

    @Mapping(target = "schemas", ignore = true)
    ProjectDto map(Project project);

    Table map(TableDto tableDto);

    @Mapping(target = "fields", ignore = true)
    TableDto map(Table table);

    @Named("mapWithEagerFields")
    TableDto mapWithEagerFields(Table table);

}
