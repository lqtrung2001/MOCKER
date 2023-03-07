package com.mocker.controller.table;

import com.mocker.controller.field.ApiFieldMapper;
import com.mocker.domain.dto.TableDto;
import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.Table;
import org.mapstruct.IterableMapping;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

import java.util.List;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {ApiFieldMapper.class})
public interface ApiTableMapper {

    @Named("mapFetchFields")
    TableDto mapFetchFields(Table table);

    @IterableMapping(qualifiedByName = "mapFetchFields")
    List<TableDto> map(List<Table> tables);

    @Mapping(target = "projects", ignore = true)
    @Mapping(target = "groupMembers", ignore = true)
    com.mocker.domain.dto.GroupDto map(Group group);

    @Mapping(target = "tables", ignore = true)
    com.mocker.domain.dto.SchemaDto map(Schema schema);

    @Mapping(target = "schemas", ignore = true)
    com.mocker.domain.dto.ProjectDto map(Project project);

}
