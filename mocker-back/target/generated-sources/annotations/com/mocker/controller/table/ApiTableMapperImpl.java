package com.mocker.controller.table;

import com.mocker.controller.schema.ApiSchemaMapper;
import com.mocker.domain.dto.CategoryDto;
import com.mocker.domain.dto.FieldDto;
import com.mocker.domain.dto.GenerateTypeDto;
import com.mocker.domain.dto.OptionDto;
import com.mocker.domain.dto.SQLTypeDto;
import com.mocker.domain.dto.SourceDto;
import com.mocker.domain.dto.TableDto;
import com.mocker.domain.model.entity.Category;
import com.mocker.domain.model.entity.Field;
import com.mocker.domain.model.entity.GenerateType;
import com.mocker.domain.model.entity.Option;
import com.mocker.domain.model.entity.SQLType;
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
    date = "2023-04-30T14:53:17+0700",
    comments = "version: 1.5.3.Final, compiler: javac, environment: Java 18.0.2.1 (Oracle Corporation)"
)
@Component
public class ApiTableMapperImpl implements ApiTableMapper {

    @Autowired
    private ApiSchemaMapper apiSchemaMapper;

    @Override
    public Table map(TableDto tableDto) {
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
        table.schema( apiSchemaMapper.map( tableDto.getSchema() ) );
        table.fields( fieldDtoListToFieldList( tableDto.getFields() ) );

        return table.build();
    }

    @Override
    public TableDto map(Table table) {
        if ( table == null ) {
            return null;
        }

        TableDto tableDto = new TableDto();

        tableDto.setId( table.getId() );
        tableDto.setName( table.getName() );
        tableDto.setDescription( table.getDescription() );
        tableDto.setSchema( apiSchemaMapper.map( table.getSchema() ) );
        tableDto.setCreatedDate( table.getCreatedDate() );
        if ( table.getCreatedBy() != null ) {
            tableDto.setCreatedBy( UUID.fromString( table.getCreatedBy() ) );
        }
        if ( table.getCreatedByGroup() != null ) {
            tableDto.setCreatedByGroup( UUID.fromString( table.getCreatedByGroup() ) );
        }
        tableDto.setModifiedDate( table.getModifiedDate() );
        if ( table.getModifiedBy() != null ) {
            tableDto.setModifiedBy( UUID.fromString( table.getModifiedBy() ) );
        }
        if ( table.getModifiedByGroup() != null ) {
            tableDto.setModifiedByGroup( UUID.fromString( table.getModifiedByGroup() ) );
        }
        tableDto.setVersion( table.getVersion() );

        return tableDto;
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
        field.table( map( fieldDto.getTable() ) );

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
}
