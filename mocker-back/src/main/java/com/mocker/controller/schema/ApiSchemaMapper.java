package com.mocker.controller.schema;

import com.mocker.domain.dto.GroupDto;
import com.mocker.domain.dto.ProjectDto;
import com.mocker.domain.dto.SchemaDto;
import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.Schema;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring")
public interface ApiSchemaMapper {

    Schema map(SchemaDto schemaDto);

    List<SchemaDto> map(List<Schema> schemas);

    @Mapping(target = "tables", ignore = true)
    SchemaDto map(Schema schema);

    @Mapping(target = "schemas", ignore = true)
    ProjectDto map(Project project);

    @Mapping(target = "groupMembers", ignore = true)
    @Mapping(target = "projects", ignore = true)
    GroupDto map(Group group);
}
