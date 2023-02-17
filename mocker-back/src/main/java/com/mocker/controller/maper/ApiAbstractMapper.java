package com.mocker.controller.maper;

import com.mocker.domain.dto.CategoryDto;
import com.mocker.domain.dto.FieldDto;
import com.mocker.domain.dto.GenerateTypeDto;
import com.mocker.domain.dto.GroupDto;
import com.mocker.domain.dto.OptionDto;
import com.mocker.domain.dto.ProjectDto;
import com.mocker.domain.dto.SQLTypeDto;
import com.mocker.domain.dto.SchemaDto;
import com.mocker.domain.dto.SourceDto;
import com.mocker.domain.dto.TableDto;
import com.mocker.domain.dto.UserDto;
import com.mocker.domain.model.entity.Category;
import com.mocker.domain.model.entity.Field;
import com.mocker.domain.model.entity.GenerateType;
import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.Option;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.SQLType;
import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.Source;
import com.mocker.domain.model.entity.Table;
import com.mocker.domain.model.entity.User;
import com.mocker.domain.model.entity.composite_key.GroupMemberPK;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Mapper(componentModel = "spring")
public interface ApiAbstractMapper {

    @Mapping(target = "generateTypes", ignore = true)
    CategoryDto map(Category category);

    @Named("mapHasGenerateTypes")
    CategoryDto mapWithEagerGenerateTypes(Category category);

    Category map(CategoryDto categoryDto);

    FieldDto map(Field field);

    Field map(FieldDto fieldDto);

    @Mapping(target = "sources", ignore = true)
    @Mapping(target = "sqlTypes", ignore = true)
    GenerateTypeDto map(GenerateType generateType);

    GenerateType map(GenerateTypeDto generateTypeDto);

    Group map(GroupDto groupDto);

    @Mapping(target = "projects", ignore = true)
    @Mapping(target = "groupMembers", ignore = true)
    GroupDto map(Group group);

    @Named("mapWithEagerProjectsAndGroupMembers")
    GroupDto mapWithEagerProjectsAndGroupMembers(Group group);

    OptionDto map(Option option);

    Option map(OptionDto optionDto);

    Project map(ProjectDto projectDto);

    @Mapping(target = "schemas", ignore = true)
    ProjectDto map(Project project);

    Schema map(SchemaDto schemaDto);

    @Mapping(target = "tables", ignore = true)
    SchemaDto map(Schema schema);

    Source map(SourceDto sourceDto);

    SourceDto map(Source source);

    SQLType map(SQLTypeDto sqlTypeDto);

    @Mapping(target = "generateTypes", ignore = true)
    SQLTypeDto map(SQLType sqlType);

    Table map(TableDto tableDto);

    @Mapping(target = "fields", ignore = true)
    TableDto map(Table table);

    @Named("mapWithEagerFields")
    TableDto mapWithEagerFields(Table table);

    User map(UserDto userDto);

    @Mapping(target = "groupMembers", ignore = true)
    UserDto map(User user);

    com.mocker.domain.dto.GroupMemberDto map(GroupMember groupMember);

    GroupMember map(com.mocker.domain.dto.GroupMemberDto groupMemberDto);

    com.mocker.domain.dto.GroupMemberPKDto map(GroupMemberPK groupMemberPK);

    GroupMemberPK map(com.mocker.domain.dto.GroupMemberPKDto groupMemberPKDto);

}
