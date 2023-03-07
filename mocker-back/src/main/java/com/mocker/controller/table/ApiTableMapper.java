package com.mocker.controller.table;

import com.mocker.domain.dto.FieldDto;
import com.mocker.domain.dto.TableDto;
import com.mocker.domain.model.entity.*;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring")
public interface ApiTableMapper {

    TableDto mapFetchFields(Table table);

    @Mapping(target = "table", ignore = true)
    FieldDto map(Field field);

    @Mapping(target = "projects", ignore = true)
    @Mapping(target = "groupMembers", ignore = true)
    com.mocker.domain.dto.GroupDto map(Group group);

    @Mapping(target = "tables", ignore = true)
    com.mocker.domain.dto.SchemaDto map(Schema schema);

    @Mapping(target = "schemas", ignore = true)
    com.mocker.domain.dto.ProjectDto map(Project project);

}
