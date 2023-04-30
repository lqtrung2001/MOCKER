package com.mocker.controller.table;

import com.mocker.controller.field.ApiFieldMapper;
import com.mocker.controller.schema.ApiSchemaMapper;
import com.mocker.domain.dto.FieldDto;
import com.mocker.domain.dto.TableDto;
import com.mocker.domain.model.entity.Field;
import com.mocker.domain.model.entity.Table;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.annotation.processing.Generated;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-04-30T14:53:16+0700",
    comments = "version: 1.5.3.Final, compiler: javac, environment: Java 18.0.2.1 (Oracle Corporation)"
)
@Component
public class ApiTableMapperDecoratorImpl implements ApiTableMapperDecorator {

    @Autowired
    private ApiFieldMapper apiFieldMapper;
    @Autowired
    private ApiSchemaMapper apiSchemaMapper;

    @Override
    public List<TableDto> mapToTablesDtoFetchFields(List<Table> tables) {
        if ( tables == null ) {
            return null;
        }

        List<TableDto> list = new ArrayList<TableDto>( tables.size() );
        for ( Table table : tables ) {
            list.add( mapFetchFields( table ) );
        }

        return list;
    }

    @Override
    public TableDto mapFetchFields(Table table) {
        if ( table == null ) {
            return null;
        }

        TableDto tableDto = new TableDto();

        tableDto.setId( table.getId() );
        tableDto.setName( table.getName() );
        tableDto.setDescription( table.getDescription() );
        tableDto.setSchema( apiSchemaMapper.map( table.getSchema() ) );
        tableDto.setFields( fieldListToFieldDtoList( table.getFields() ) );
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

    protected List<FieldDto> fieldListToFieldDtoList(List<Field> list) {
        if ( list == null ) {
            return null;
        }

        List<FieldDto> list1 = new ArrayList<FieldDto>( list.size() );
        for ( Field field : list ) {
            list1.add( apiFieldMapper.map( field ) );
        }

        return list1;
    }
}
