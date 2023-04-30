package com.mocker.controller.category;

import com.mocker.domain.dto.CategoryDto;
import com.mocker.domain.dto.GenerateTypeDto;
import com.mocker.domain.dto.SQLTypeDto;
import com.mocker.domain.dto.SourceDto;
import com.mocker.domain.model.entity.Category;
import com.mocker.domain.model.entity.GenerateType;
import com.mocker.domain.model.entity.SQLType;
import com.mocker.domain.model.entity.Source;
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
public class ApiCategoryMapperImpl implements ApiCategoryMapper {

    @Override
    public Category map(CategoryDto categoryDto) {
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

    @Override
    public CategoryDto map(Category category) {
        if ( category == null ) {
            return null;
        }

        CategoryDto categoryDto = new CategoryDto();

        categoryDto.setId( category.getId() );
        categoryDto.setName( category.getName() );
        categoryDto.setDescription( category.getDescription() );
        categoryDto.setCreatedDate( category.getCreatedDate() );
        if ( category.getCreatedBy() != null ) {
            categoryDto.setCreatedBy( UUID.fromString( category.getCreatedBy() ) );
        }
        if ( category.getCreatedByGroup() != null ) {
            categoryDto.setCreatedByGroup( UUID.fromString( category.getCreatedByGroup() ) );
        }
        categoryDto.setModifiedDate( category.getModifiedDate() );
        if ( category.getModifiedBy() != null ) {
            categoryDto.setModifiedBy( UUID.fromString( category.getModifiedBy() ) );
        }
        if ( category.getModifiedByGroup() != null ) {
            categoryDto.setModifiedByGroup( UUID.fromString( category.getModifiedByGroup() ) );
        }
        categoryDto.setVersion( category.getVersion() );

        return categoryDto;
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
        generateType.category( map( generateTypeDto.getCategory() ) );
        generateType.sources( sourceDtoListToSourceList( generateTypeDto.getSources() ) );
        generateType.sqlTypes( sQLTypeDtoListToSQLTypeList( generateTypeDto.getSqlTypes() ) );

        return generateType.build();
    }
}
