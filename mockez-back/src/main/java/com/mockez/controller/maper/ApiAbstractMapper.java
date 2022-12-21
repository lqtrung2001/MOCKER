package com.mockez.controller.maper;

import com.mockez.domain.dto.CategoryDto;
import com.mockez.domain.dto.FieldDto;
import com.mockez.domain.dto.GenerateTypeDto;
import com.mockez.domain.dto.GroupDto;
import com.mockez.domain.dto.OptionDto;
import com.mockez.domain.dto.ProjectDto;
import com.mockez.domain.dto.SQLTypeDto;
import com.mockez.domain.dto.SchemaDto;
import com.mockez.domain.dto.SourceDto;
import com.mockez.domain.dto.TableDto;
import com.mockez.domain.dto.UserDto;
import com.mockez.domain.model.entity.Category;
import com.mockez.domain.model.entity.Field;
import com.mockez.domain.model.entity.GenerateType;
import com.mockez.domain.model.entity.Group;
import com.mockez.domain.model.entity.GroupMember;
import com.mockez.domain.model.entity.Option;
import com.mockez.domain.model.entity.Project;
import com.mockez.domain.model.entity.SQLType;
import com.mockez.domain.model.entity.Schema;
import com.mockez.domain.model.entity.Source;
import com.mockez.domain.model.entity.Table;
import com.mockez.domain.model.entity.User;
import com.mockez.domain.model.entity.composite_key.GroupMemberPK;
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

    com.mockez.domain.dto.GroupMemberDto map(GroupMember groupMember);

    GroupMember map(com.mockez.domain.dto.GroupMemberDto groupMemberDto);

    com.mockez.domain.dto.GroupMemberPKDto map(GroupMemberPK groupMemberPK);

    GroupMemberPK map(com.mockez.domain.dto.GroupMemberPKDto groupMemberPKDto);

}
