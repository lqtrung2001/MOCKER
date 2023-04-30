package com.mocker.controller.group;

import com.mocker.domain.dto.CategoryDto;
import com.mocker.domain.dto.FieldDto;
import com.mocker.domain.dto.GenderDto;
import com.mocker.domain.dto.GenerateTypeDto;
import com.mocker.domain.dto.GroupDto;
import com.mocker.domain.dto.GroupMemberDto;
import com.mocker.domain.dto.GroupMemberPKDto;
import com.mocker.domain.dto.OptionDto;
import com.mocker.domain.dto.ProjectDto;
import com.mocker.domain.dto.RoleDto;
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
import com.mocker.domain.model.entity.enumeration.Gender;
import com.mocker.domain.model.entity.enumeration.Role;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-04-30T14:53:18+0700",
    comments = "version: 1.5.3.Final, compiler: javac, environment: Java 18.0.2.1 (Oracle Corporation)"
)
@Component
public class ApiGroupMapperImpl implements ApiGroupMapper {

    @Override
    public Group map(GroupDto groupDto) {
        if ( groupDto == null ) {
            return null;
        }

        Group.GroupBuilder<?, ?> group = Group.builder();

        group.createdDate( groupDto.getCreatedDate() );
        if ( groupDto.getCreatedBy() != null ) {
            group.createdBy( groupDto.getCreatedBy().toString() );
        }
        if ( groupDto.getCreatedByGroup() != null ) {
            group.createdByGroup( groupDto.getCreatedByGroup().toString() );
        }
        group.modifiedDate( groupDto.getModifiedDate() );
        if ( groupDto.getModifiedBy() != null ) {
            group.modifiedBy( groupDto.getModifiedBy().toString() );
        }
        if ( groupDto.getModifiedByGroup() != null ) {
            group.modifiedByGroup( groupDto.getModifiedByGroup().toString() );
        }
        group.version( groupDto.getVersion() );
        group.id( groupDto.getId() );
        group.name( groupDto.getName() );
        group.description( groupDto.getDescription() );
        group.projects( projectDtoListToProjectList( groupDto.getProjects() ) );
        group.groupMembers( groupMemberDtoListToGroupMemberList( groupDto.getGroupMembers() ) );

        return group.build();
    }

    @Override
    public GroupDto map(Group group) {
        if ( group == null ) {
            return null;
        }

        GroupDto groupDto = new GroupDto();

        groupDto.setId( group.getId() );
        groupDto.setName( group.getName() );
        groupDto.setDescription( group.getDescription() );
        groupDto.setCreatedDate( group.getCreatedDate() );
        if ( group.getCreatedBy() != null ) {
            groupDto.setCreatedBy( UUID.fromString( group.getCreatedBy() ) );
        }
        if ( group.getCreatedByGroup() != null ) {
            groupDto.setCreatedByGroup( UUID.fromString( group.getCreatedByGroup() ) );
        }
        groupDto.setModifiedDate( group.getModifiedDate() );
        if ( group.getModifiedBy() != null ) {
            groupDto.setModifiedBy( UUID.fromString( group.getModifiedBy() ) );
        }
        if ( group.getModifiedByGroup() != null ) {
            groupDto.setModifiedByGroup( UUID.fromString( group.getModifiedByGroup() ) );
        }
        groupDto.setVersion( group.getVersion() );

        return groupDto;
    }

    @Override
    public List<GroupDto> mapToGroupsDto(List<Group> groups) {
        if ( groups == null ) {
            return null;
        }

        List<GroupDto> list = new ArrayList<GroupDto>( groups.size() );
        for ( Group group : groups ) {
            list.add( map( group ) );
        }

        return list;
    }

    protected List<GenerateType> generateTypeDtoListToGenerateTypeList(List<GenerateTypeDto> list) {
        if ( list == null ) {
            return null;
        }

        List<GenerateType> list1 = new ArrayList<GenerateType>( list.size() );
        for ( GenerateTypeDto generateTypeDto : list ) {
            list1.add( generateTypeDtoToGenerateType( generateTypeDto ) );
        }

        return list1;
    }

    protected Category categoryDtoToCategory(CategoryDto categoryDto) {
        if ( categoryDto == null ) {
            return null;
        }

        Category.CategoryBuilder<?, ?> category = Category.builder();

        category.createdDate( categoryDto.getCreatedDate() );
        if ( categoryDto.getCreatedBy() != null ) {
            category.createdBy( categoryDto.getCreatedBy().toString() );
        }
        if ( categoryDto.getCreatedByGroup() != null ) {
            category.createdByGroup( categoryDto.getCreatedByGroup().toString() );
        }
        category.modifiedDate( categoryDto.getModifiedDate() );
        if ( categoryDto.getModifiedBy() != null ) {
            category.modifiedBy( categoryDto.getModifiedBy().toString() );
        }
        if ( categoryDto.getModifiedByGroup() != null ) {
            category.modifiedByGroup( categoryDto.getModifiedByGroup().toString() );
        }
        category.version( categoryDto.getVersion() );
        category.id( categoryDto.getId() );
        category.name( categoryDto.getName() );
        category.description( categoryDto.getDescription() );
        category.generateTypes( generateTypeDtoListToGenerateTypeList( categoryDto.getGenerateTypes() ) );

        return category.build();
    }

    protected Source sourceDtoToSource(SourceDto sourceDto) {
        if ( sourceDto == null ) {
            return null;
        }

        Source.SourceBuilder<?, ?> source = Source.builder();

        source.createdDate( sourceDto.getCreatedDate() );
        if ( sourceDto.getCreatedBy() != null ) {
            source.createdBy( sourceDto.getCreatedBy().toString() );
        }
        if ( sourceDto.getCreatedByGroup() != null ) {
            source.createdByGroup( sourceDto.getCreatedByGroup().toString() );
        }
        source.modifiedDate( sourceDto.getModifiedDate() );
        if ( sourceDto.getModifiedBy() != null ) {
            source.modifiedBy( sourceDto.getModifiedBy().toString() );
        }
        if ( sourceDto.getModifiedByGroup() != null ) {
            source.modifiedByGroup( sourceDto.getModifiedByGroup().toString() );
        }
        source.version( sourceDto.getVersion() );
        source.id( sourceDto.getId() );
        source.value( sourceDto.getValue() );
        source.generateType( generateTypeDtoToGenerateType( sourceDto.getGenerateType() ) );

        return source.build();
    }

    protected List<Source> sourceDtoListToSourceList(List<SourceDto> list) {
        if ( list == null ) {
            return null;
        }

        List<Source> list1 = new ArrayList<Source>( list.size() );
        for ( SourceDto sourceDto : list ) {
            list1.add( sourceDtoToSource( sourceDto ) );
        }

        return list1;
    }

    protected List<SQLType> sQLTypeDtoListToSQLTypeList(List<SQLTypeDto> list) {
        if ( list == null ) {
            return null;
        }

        List<SQLType> list1 = new ArrayList<SQLType>( list.size() );
        for ( SQLTypeDto sQLTypeDto : list ) {
            list1.add( sQLTypeDtoToSQLType( sQLTypeDto ) );
        }

        return list1;
    }

    protected GenerateType generateTypeDtoToGenerateType(GenerateTypeDto generateTypeDto) {
        if ( generateTypeDto == null ) {
            return null;
        }

        GenerateType.GenerateTypeBuilder<?, ?> generateType = GenerateType.builder();

        generateType.createdDate( generateTypeDto.getCreatedDate() );
        if ( generateTypeDto.getCreatedBy() != null ) {
            generateType.createdBy( generateTypeDto.getCreatedBy().toString() );
        }
        if ( generateTypeDto.getCreatedByGroup() != null ) {
            generateType.createdByGroup( generateTypeDto.getCreatedByGroup().toString() );
        }
        generateType.modifiedDate( generateTypeDto.getModifiedDate() );
        if ( generateTypeDto.getModifiedBy() != null ) {
            generateType.modifiedBy( generateTypeDto.getModifiedBy().toString() );
        }
        if ( generateTypeDto.getModifiedByGroup() != null ) {
            generateType.modifiedByGroup( generateTypeDto.getModifiedByGroup().toString() );
        }
        generateType.version( generateTypeDto.getVersion() );
        generateType.id( generateTypeDto.getId() );
        generateType.code( generateTypeDto.getCode() );
        generateType.description( generateTypeDto.getDescription() );
        generateType.category( categoryDtoToCategory( generateTypeDto.getCategory() ) );
        generateType.sources( sourceDtoListToSourceList( generateTypeDto.getSources() ) );
        generateType.sqlTypes( sQLTypeDtoListToSQLTypeList( generateTypeDto.getSqlTypes() ) );

        return generateType.build();
    }

    protected SQLType sQLTypeDtoToSQLType(SQLTypeDto sQLTypeDto) {
        if ( sQLTypeDto == null ) {
            return null;
        }

        SQLType.SQLTypeBuilder<?, ?> sQLType = SQLType.builder();

        sQLType.createdDate( sQLTypeDto.getCreatedDate() );
        if ( sQLTypeDto.getCreatedBy() != null ) {
            sQLType.createdBy( sQLTypeDto.getCreatedBy().toString() );
        }
        if ( sQLTypeDto.getCreatedByGroup() != null ) {
            sQLType.createdByGroup( sQLTypeDto.getCreatedByGroup().toString() );
        }
        sQLType.modifiedDate( sQLTypeDto.getModifiedDate() );
        if ( sQLTypeDto.getModifiedBy() != null ) {
            sQLType.modifiedBy( sQLTypeDto.getModifiedBy().toString() );
        }
        if ( sQLTypeDto.getModifiedByGroup() != null ) {
            sQLType.modifiedByGroup( sQLTypeDto.getModifiedByGroup().toString() );
        }
        sQLType.version( sQLTypeDto.getVersion() );
        sQLType.id( sQLTypeDto.getId() );
        sQLType.code( sQLTypeDto.getCode() );
        sQLType.description( sQLTypeDto.getDescription() );
        sQLType.generateTypes( generateTypeDtoListToGenerateTypeList( sQLTypeDto.getGenerateTypes() ) );

        return sQLType.build();
    }

    protected Option optionDtoToOption(OptionDto optionDto) {
        if ( optionDto == null ) {
            return null;
        }

        Option.OptionBuilder<?, ?> option = Option.builder();

        option.createdDate( optionDto.getCreatedDate() );
        if ( optionDto.getCreatedBy() != null ) {
            option.createdBy( optionDto.getCreatedBy().toString() );
        }
        if ( optionDto.getCreatedByGroup() != null ) {
            option.createdByGroup( optionDto.getCreatedByGroup().toString() );
        }
        option.modifiedDate( optionDto.getModifiedDate() );
        if ( optionDto.getModifiedBy() != null ) {
            option.modifiedBy( optionDto.getModifiedBy().toString() );
        }
        if ( optionDto.getModifiedByGroup() != null ) {
            option.modifiedByGroup( optionDto.getModifiedByGroup().toString() );
        }
        option.version( optionDto.getVersion() );
        option.id( optionDto.getId() );
        option.blank( optionDto.getBlank() );
        option.field( fieldDtoToField( optionDto.getField() ) );

        return option.build();
    }

    protected Field fieldDtoToField(FieldDto fieldDto) {
        if ( fieldDto == null ) {
            return null;
        }

        Field.FieldBuilder<?, ?> field = Field.builder();

        field.createdDate( fieldDto.getCreatedDate() );
        if ( fieldDto.getCreatedBy() != null ) {
            field.createdBy( fieldDto.getCreatedBy().toString() );
        }
        if ( fieldDto.getCreatedByGroup() != null ) {
            field.createdByGroup( fieldDto.getCreatedByGroup().toString() );
        }
        field.modifiedDate( fieldDto.getModifiedDate() );
        if ( fieldDto.getModifiedBy() != null ) {
            field.modifiedBy( fieldDto.getModifiedBy().toString() );
        }
        if ( fieldDto.getModifiedByGroup() != null ) {
            field.modifiedByGroup( fieldDto.getModifiedByGroup().toString() );
        }
        field.version( fieldDto.getVersion() );
        field.id( fieldDto.getId() );
        field.name( fieldDto.getName() );
        field.sqlType( sQLTypeDtoToSQLType( fieldDto.getSqlType() ) );
        field.generateType( generateTypeDtoToGenerateType( fieldDto.getGenerateType() ) );
        field.option( optionDtoToOption( fieldDto.getOption() ) );
        field.table( tableDtoToTable( fieldDto.getTable() ) );

        return field.build();
    }

    protected List<Field> fieldDtoListToFieldList(List<FieldDto> list) {
        if ( list == null ) {
            return null;
        }

        List<Field> list1 = new ArrayList<Field>( list.size() );
        for ( FieldDto fieldDto : list ) {
            list1.add( fieldDtoToField( fieldDto ) );
        }

        return list1;
    }

    protected Table tableDtoToTable(TableDto tableDto) {
        if ( tableDto == null ) {
            return null;
        }

        Table.TableBuilder<?, ?> table = Table.builder();

        table.createdDate( tableDto.getCreatedDate() );
        if ( tableDto.getCreatedBy() != null ) {
            table.createdBy( tableDto.getCreatedBy().toString() );
        }
        if ( tableDto.getCreatedByGroup() != null ) {
            table.createdByGroup( tableDto.getCreatedByGroup().toString() );
        }
        table.modifiedDate( tableDto.getModifiedDate() );
        if ( tableDto.getModifiedBy() != null ) {
            table.modifiedBy( tableDto.getModifiedBy().toString() );
        }
        if ( tableDto.getModifiedByGroup() != null ) {
            table.modifiedByGroup( tableDto.getModifiedByGroup().toString() );
        }
        table.version( tableDto.getVersion() );
        table.id( tableDto.getId() );
        table.name( tableDto.getName() );
        table.description( tableDto.getDescription() );
        table.schema( schemaDtoToSchema( tableDto.getSchema() ) );
        table.fields( fieldDtoListToFieldList( tableDto.getFields() ) );

        return table.build();
    }

    protected List<Table> tableDtoListToTableList(List<TableDto> list) {
        if ( list == null ) {
            return null;
        }

        List<Table> list1 = new ArrayList<Table>( list.size() );
        for ( TableDto tableDto : list ) {
            list1.add( tableDtoToTable( tableDto ) );
        }

        return list1;
    }

    protected Schema schemaDtoToSchema(SchemaDto schemaDto) {
        if ( schemaDto == null ) {
            return null;
        }

        Schema.SchemaBuilder<?, ?> schema = Schema.builder();

        schema.createdDate( schemaDto.getCreatedDate() );
        if ( schemaDto.getCreatedBy() != null ) {
            schema.createdBy( schemaDto.getCreatedBy().toString() );
        }
        if ( schemaDto.getCreatedByGroup() != null ) {
            schema.createdByGroup( schemaDto.getCreatedByGroup().toString() );
        }
        schema.modifiedDate( schemaDto.getModifiedDate() );
        if ( schemaDto.getModifiedBy() != null ) {
            schema.modifiedBy( schemaDto.getModifiedBy().toString() );
        }
        if ( schemaDto.getModifiedByGroup() != null ) {
            schema.modifiedByGroup( schemaDto.getModifiedByGroup().toString() );
        }
        schema.version( schemaDto.getVersion() );
        schema.id( schemaDto.getId() );
        schema.name( schemaDto.getName() );
        schema.description( schemaDto.getDescription() );
        schema.project( projectDtoToProject( schemaDto.getProject() ) );
        schema.tables( tableDtoListToTableList( schemaDto.getTables() ) );

        return schema.build();
    }

    protected List<Schema> schemaDtoListToSchemaList(List<SchemaDto> list) {
        if ( list == null ) {
            return null;
        }

        List<Schema> list1 = new ArrayList<Schema>( list.size() );
        for ( SchemaDto schemaDto : list ) {
            list1.add( schemaDtoToSchema( schemaDto ) );
        }

        return list1;
    }

    protected Project projectDtoToProject(ProjectDto projectDto) {
        if ( projectDto == null ) {
            return null;
        }

        Project.ProjectBuilder<?, ?> project = Project.builder();

        project.createdDate( projectDto.getCreatedDate() );
        if ( projectDto.getCreatedBy() != null ) {
            project.createdBy( projectDto.getCreatedBy().toString() );
        }
        if ( projectDto.getCreatedByGroup() != null ) {
            project.createdByGroup( projectDto.getCreatedByGroup().toString() );
        }
        project.modifiedDate( projectDto.getModifiedDate() );
        if ( projectDto.getModifiedBy() != null ) {
            project.modifiedBy( projectDto.getModifiedBy().toString() );
        }
        if ( projectDto.getModifiedByGroup() != null ) {
            project.modifiedByGroup( projectDto.getModifiedByGroup().toString() );
        }
        project.version( projectDto.getVersion() );
        project.id( projectDto.getId() );
        project.name( projectDto.getName() );
        project.summary( projectDto.getSummary() );
        project.description( projectDto.getDescription() );
        project.group( map( projectDto.getGroup() ) );
        project.schemas( schemaDtoListToSchemaList( projectDto.getSchemas() ) );

        return project.build();
    }

    protected List<Project> projectDtoListToProjectList(List<ProjectDto> list) {
        if ( list == null ) {
            return null;
        }

        List<Project> list1 = new ArrayList<Project>( list.size() );
        for ( ProjectDto projectDto : list ) {
            list1.add( projectDtoToProject( projectDto ) );
        }

        return list1;
    }

    protected GroupMemberPK groupMemberPKDtoToGroupMemberPK(GroupMemberPKDto groupMemberPKDto) {
        if ( groupMemberPKDto == null ) {
            return null;
        }

        GroupMemberPK.GroupMemberPKBuilder<?, ?> groupMemberPK = GroupMemberPK.builder();

        groupMemberPK.groupId( groupMemberPKDto.getGroupId() );
        groupMemberPK.userId( groupMemberPKDto.getUserId() );

        return groupMemberPK.build();
    }

    protected Role roleDtoToRole(RoleDto roleDto) {
        if ( roleDto == null ) {
            return null;
        }

        Role role;

        switch ( roleDto ) {
            case GROUP_ADMIN: role = Role.GROUP_ADMIN;
            break;
            case GROUP_ASSOCIATE: role = Role.GROUP_ASSOCIATE;
            break;
            case USER: role = Role.USER;
            break;
            case ADMIN: role = Role.ADMIN;
            break;
            default: throw new IllegalArgumentException( "Unexpected enum constant: " + roleDto );
        }

        return role;
    }

    protected Gender genderDtoToGender(GenderDto genderDto) {
        if ( genderDto == null ) {
            return null;
        }

        Gender gender;

        switch ( genderDto ) {
            case MALE: gender = Gender.MALE;
            break;
            case FEMALE: gender = Gender.FEMALE;
            break;
            case OTHER: gender = Gender.OTHER;
            break;
            default: throw new IllegalArgumentException( "Unexpected enum constant: " + genderDto );
        }

        return gender;
    }

    protected List<GroupMember> groupMemberDtoListToGroupMemberList(List<GroupMemberDto> list) {
        if ( list == null ) {
            return null;
        }

        List<GroupMember> list1 = new ArrayList<GroupMember>( list.size() );
        for ( GroupMemberDto groupMemberDto : list ) {
            list1.add( groupMemberDtoToGroupMember( groupMemberDto ) );
        }

        return list1;
    }

    protected User userDtoToUser(UserDto userDto) {
        if ( userDto == null ) {
            return null;
        }

        User.UserBuilder<?, ?> user = User.builder();

        user.createdDate( userDto.getCreatedDate() );
        if ( userDto.getCreatedBy() != null ) {
            user.createdBy( userDto.getCreatedBy().toString() );
        }
        if ( userDto.getCreatedByGroup() != null ) {
            user.createdByGroup( userDto.getCreatedByGroup().toString() );
        }
        user.modifiedDate( userDto.getModifiedDate() );
        if ( userDto.getModifiedBy() != null ) {
            user.modifiedBy( userDto.getModifiedBy().toString() );
        }
        if ( userDto.getModifiedByGroup() != null ) {
            user.modifiedByGroup( userDto.getModifiedByGroup().toString() );
        }
        user.version( userDto.getVersion() );
        user.id( userDto.getId() );
        user.username( userDto.getUsername() );
        user.password( userDto.getPassword() );
        user.name( userDto.getName() );
        user.bio( userDto.getBio() );
        user.phone( userDto.getPhone() );
        user.gender( genderDtoToGender( userDto.getGender() ) );
        user.address( userDto.getAddress() );
        user.dob( userDto.getDob() );
        user.isAccountNonExpired( userDto.getIsAccountNonExpired() );
        user.isAccountNonLocked( userDto.getIsAccountNonLocked() );
        user.isCredentialsNonExpired( userDto.getIsCredentialsNonExpired() );
        user.isEnabled( userDto.getIsEnabled() );
        user.grantedAuthorities( userDto.getGrantedAuthorities() );
        user.groupMembers( groupMemberDtoListToGroupMemberList( userDto.getGroupMembers() ) );

        return user.build();
    }

    protected GroupMember groupMemberDtoToGroupMember(GroupMemberDto groupMemberDto) {
        if ( groupMemberDto == null ) {
            return null;
        }

        GroupMember.GroupMemberBuilder<?, ?> groupMember = GroupMember.builder();

        groupMember.createdDate( groupMemberDto.getCreatedDate() );
        if ( groupMemberDto.getCreatedBy() != null ) {
            groupMember.createdBy( groupMemberDto.getCreatedBy().toString() );
        }
        if ( groupMemberDto.getCreatedByGroup() != null ) {
            groupMember.createdByGroup( groupMemberDto.getCreatedByGroup().toString() );
        }
        groupMember.modifiedDate( groupMemberDto.getModifiedDate() );
        if ( groupMemberDto.getModifiedBy() != null ) {
            groupMember.modifiedBy( groupMemberDto.getModifiedBy().toString() );
        }
        if ( groupMemberDto.getModifiedByGroup() != null ) {
            groupMember.modifiedByGroup( groupMemberDto.getModifiedByGroup().toString() );
        }
        groupMember.version( groupMemberDto.getVersion() );
        groupMember.id( groupMemberPKDtoToGroupMemberPK( groupMemberDto.getId() ) );
        groupMember.role( roleDtoToRole( groupMemberDto.getRole() ) );
        groupMember.user( userDtoToUser( groupMemberDto.getUser() ) );
        groupMember.group( map( groupMemberDto.getGroup() ) );

        return groupMember.build();
    }
}
