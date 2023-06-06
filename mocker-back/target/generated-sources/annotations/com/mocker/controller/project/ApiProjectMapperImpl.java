package com.mocker.controller.project;

import com.mocker.controller.group.ApiGroupMapper;
import com.mocker.domain.dto.CategoryDto;
import com.mocker.domain.dto.FieldDto;
import com.mocker.domain.dto.GenerateTypeDto;
import com.mocker.domain.dto.OptionDto;
import com.mocker.domain.dto.ProjectDto;
import com.mocker.domain.dto.SQLTypeDto;
import com.mocker.domain.dto.SchemaDto;
import com.mocker.domain.dto.SourceDto;
import com.mocker.domain.dto.TableDto;
import com.mocker.domain.model.entity.Category;
import com.mocker.domain.model.entity.Field;
import com.mocker.domain.model.entity.GenerateType;
import com.mocker.domain.model.entity.Option;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.SQLType;
import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.Source;
import com.mocker.domain.model.entity.Table;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.annotation.processing.Generated;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-06T21:19:19+0700",
    comments = "version: 1.5.3.Final, compiler: javac, environment: Java 18.0.2.1 (Oracle Corporation)"
)
@Component
public class ApiProjectMapperImpl implements ApiProjectMapper {

    @Autowired
    private ApiGroupMapper apiGroupMapper;

    @Override
    public Project map(ProjectDto projectDto) {
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
        project.description( projectDto.getDescription() );
        project.group( apiGroupMapper.map( projectDto.getGroup() ) );
        project.schemas( schemaDtoListToSchemaList( projectDto.getSchemas() ) );

        return project.build();
    }

    @Override
    public ProjectDto map(Project project) {
        if ( project == null ) {
            return null;
        }

        ProjectDto projectDto = new ProjectDto();

        projectDto.setId( project.getId() );
        projectDto.setName( project.getName() );
        projectDto.setDescription( project.getDescription() );
        projectDto.setGroup( apiGroupMapper.map( project.getGroup() ) );
        projectDto.setCreatedDate( project.getCreatedDate() );
        if ( project.getCreatedBy() != null ) {
            projectDto.setCreatedBy( UUID.fromString( project.getCreatedBy() ) );
        }
        if ( project.getCreatedByGroup() != null ) {
            projectDto.setCreatedByGroup( UUID.fromString( project.getCreatedByGroup() ) );
        }
        projectDto.setModifiedDate( project.getModifiedDate() );
        if ( project.getModifiedBy() != null ) {
            projectDto.setModifiedBy( UUID.fromString( project.getModifiedBy() ) );
        }
        if ( project.getModifiedByGroup() != null ) {
            projectDto.setModifiedByGroup( UUID.fromString( project.getModifiedByGroup() ) );
        }
        projectDto.setVersion( project.getVersion() );

        return projectDto;
    }

    @Override
    public List<ProjectDto> map(List<Project> projects) {
        if ( projects == null ) {
            return null;
        }

        List<ProjectDto> list = new ArrayList<ProjectDto>( projects.size() );
        for ( Project project : projects ) {
            list.add( map( project ) );
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
        if ( optionDto.getUnique() != null ) {
            option.unique( optionDto.getUnique() );
        }
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
        table.row( tableDto.getRow() );
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
        schema.project( map( schemaDto.getProject() ) );
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
}
