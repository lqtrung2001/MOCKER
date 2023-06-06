package com.mocker.controller.category;

import com.mocker.controller.generateType.ApiGenerateTypeMapper;
import com.mocker.domain.dto.CategoryDto;
import com.mocker.domain.dto.GenerateTypeDto;
import com.mocker.domain.dto.SourceDto;
import com.mocker.domain.model.entity.Category;
import com.mocker.domain.model.entity.GenerateType;
import com.mocker.domain.model.entity.Source;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.annotation.processing.Generated;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-06T21:19:18+0700",
    comments = "version: 1.5.3.Final, compiler: javac, environment: Java 18.0.2.1 (Oracle Corporation)"
)
@Component
public class ApiCategoryMapperDecoratorImpl implements ApiCategoryMapperDecorator {

    @Autowired
    private ApiGenerateTypeMapper apiGenerateTypeMapper;

    @Override
    public List<CategoryDto> mapToCategoriesDtoFetchGenerateTypes(List<Category> categories) {
        if ( categories == null ) {
            return null;
        }

        List<CategoryDto> list = new ArrayList<CategoryDto>( categories.size() );
        for ( Category category : categories ) {
            list.add( mapFetchGenerateTypes( category ) );
        }

        return list;
    }

    @Override
    public CategoryDto mapFetchGenerateTypes(Category category) {
        if ( category == null ) {
            return null;
        }

        CategoryDto categoryDto = new CategoryDto();

        categoryDto.setGenerateTypes( mapToGenerateTypesDtoFetchSourcesDto( category.getGenerateTypes() ) );
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

    @Override
    public List<GenerateTypeDto> mapToGenerateTypesDtoFetchSourcesDto(List<GenerateType> generateTypes) {
        if ( generateTypes == null ) {
            return null;
        }

        List<GenerateTypeDto> list = new ArrayList<GenerateTypeDto>( generateTypes.size() );
        for ( GenerateType generateType : generateTypes ) {
            list.add( mapToGenerateTypeFetchSourcesDto( generateType ) );
        }

        return list;
    }

    @Override
    public GenerateTypeDto mapToGenerateTypeFetchSourcesDto(GenerateType generateType) {
        if ( generateType == null ) {
            return null;
        }

        GenerateTypeDto generateTypeDto = new GenerateTypeDto();

        generateTypeDto.setId( generateType.getId() );
        generateTypeDto.setCode( generateType.getCode() );
        generateTypeDto.setDescription( generateType.getDescription() );
        generateTypeDto.setSources( sourceListToSourceDtoList( generateType.getSources() ) );
        generateTypeDto.setCreatedDate( generateType.getCreatedDate() );
        if ( generateType.getCreatedBy() != null ) {
            generateTypeDto.setCreatedBy( UUID.fromString( generateType.getCreatedBy() ) );
        }
        if ( generateType.getCreatedByGroup() != null ) {
            generateTypeDto.setCreatedByGroup( UUID.fromString( generateType.getCreatedByGroup() ) );
        }
        generateTypeDto.setModifiedDate( generateType.getModifiedDate() );
        if ( generateType.getModifiedBy() != null ) {
            generateTypeDto.setModifiedBy( UUID.fromString( generateType.getModifiedBy() ) );
        }
        if ( generateType.getModifiedByGroup() != null ) {
            generateTypeDto.setModifiedByGroup( UUID.fromString( generateType.getModifiedByGroup() ) );
        }
        generateTypeDto.setVersion( generateType.getVersion() );

        return generateTypeDto;
    }

    protected SourceDto sourceToSourceDto(Source source) {
        if ( source == null ) {
            return null;
        }

        SourceDto sourceDto = new SourceDto();

        sourceDto.setId( source.getId() );
        sourceDto.setValue( source.getValue() );
        sourceDto.setGenerateType( apiGenerateTypeMapper.map( source.getGenerateType() ) );
        sourceDto.setCreatedDate( source.getCreatedDate() );
        if ( source.getCreatedBy() != null ) {
            sourceDto.setCreatedBy( UUID.fromString( source.getCreatedBy() ) );
        }
        if ( source.getCreatedByGroup() != null ) {
            sourceDto.setCreatedByGroup( UUID.fromString( source.getCreatedByGroup() ) );
        }
        sourceDto.setModifiedDate( source.getModifiedDate() );
        if ( source.getModifiedBy() != null ) {
            sourceDto.setModifiedBy( UUID.fromString( source.getModifiedBy() ) );
        }
        if ( source.getModifiedByGroup() != null ) {
            sourceDto.setModifiedByGroup( UUID.fromString( source.getModifiedByGroup() ) );
        }
        sourceDto.setVersion( source.getVersion() );

        return sourceDto;
    }

    protected List<SourceDto> sourceListToSourceDtoList(List<Source> list) {
        if ( list == null ) {
            return null;
        }

        List<SourceDto> list1 = new ArrayList<SourceDto>( list.size() );
        for ( Source source : list ) {
            list1.add( sourceToSourceDto( source ) );
        }

        return list1;
    }
}
