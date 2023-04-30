package com.mocker.controller.generateType;

import com.mocker.controller.category.ApiCategoryMapper;
import com.mocker.domain.dto.GenerateTypeDto;
import com.mocker.domain.dto.SQLTypeDto;
import com.mocker.domain.dto.SourceDto;
import com.mocker.domain.model.entity.GenerateType;
import com.mocker.domain.model.entity.SQLType;
import com.mocker.domain.model.entity.Source;
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
public class ApiGenerateTypeMapperImpl implements ApiGenerateTypeMapper {

    @Autowired
    private ApiCategoryMapper apiCategoryMapper;

    @Override
    public GenerateType map(GenerateTypeDto generateTypeDto) {
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
        generateType.category( apiCategoryMapper.map( generateTypeDto.getCategory() ) );
        generateType.sources( sourceDtoListToSourceList( generateTypeDto.getSources() ) );
        generateType.sqlTypes( sQLTypeDtoListToSQLTypeList( generateTypeDto.getSqlTypes() ) );

        return generateType.build();
    }

    @Override
    public GenerateTypeDto map(GenerateType generateType) {
        if ( generateType == null ) {
            return null;
        }

        GenerateTypeDto generateTypeDto = new GenerateTypeDto();

        generateTypeDto.setId( generateType.getId() );
        generateTypeDto.setCode( generateType.getCode() );
        generateTypeDto.setDescription( generateType.getDescription() );
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
        source.generateType( map( sourceDto.getGenerateType() ) );

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
            list1.add( map( generateTypeDto ) );
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
}
