package com.mocker.controller.project;

import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.ProjectDto;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.dto.SchemaDto;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring", uses = {ApiAbstractMapper.class})
public interface ApiProjectMapper {
    Project map(ProjectDto projectDto);

    @Mapping(target = "schemas", ignore = true)
    ProjectDto map(Project project);

    Schema map(SchemaDto schemaDto);

    @Mapping(target = "tables", ignore = true)
    SchemaDto map(Schema schema);
}
