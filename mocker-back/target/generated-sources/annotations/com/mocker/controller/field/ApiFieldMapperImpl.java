package com.mocker.controller.field;

import com.mocker.controller.generateType.ApiGenerateTypeMapper;
import com.mocker.controller.option.ApiOptionMapper;
import com.mocker.controller.sqlType.ApiSQLTypeMapper;
import com.mocker.controller.table.ApiTableMapper;
import com.mocker.domain.dto.FieldDto;
import com.mocker.domain.model.entity.Field;
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
public class ApiFieldMapperImpl implements ApiFieldMapper {

    @Autowired
    private ApiSQLTypeMapper apiSQLTypeMapper;
    @Autowired
    private ApiGenerateTypeMapper apiGenerateTypeMapper;
    @Autowired
    private ApiOptionMapper apiOptionMapper;
    @Autowired
    private ApiTableMapper apiTableMapper;

    @Override
    public FieldDto map(Field field) {
        if ( field == null ) {
            return null;
        }

        FieldDto fieldDto = new FieldDto();

        fieldDto.setId( field.getId() );
        fieldDto.setName( field.getName() );
        fieldDto.setSqlType( apiSQLTypeMapper.map( field.getSqlType() ) );
        fieldDto.setGenerateType( apiGenerateTypeMapper.map( field.getGenerateType() ) );
        fieldDto.setOption( apiOptionMapper.map( field.getOption() ) );
        fieldDto.setTable( apiTableMapper.map( field.getTable() ) );
        fieldDto.setCreatedDate( field.getCreatedDate() );
        if ( field.getCreatedBy() != null ) {
            fieldDto.setCreatedBy( UUID.fromString( field.getCreatedBy() ) );
        }
        if ( field.getCreatedByGroup() != null ) {
            fieldDto.setCreatedByGroup( UUID.fromString( field.getCreatedByGroup() ) );
        }
        fieldDto.setModifiedDate( field.getModifiedDate() );
        if ( field.getModifiedBy() != null ) {
            fieldDto.setModifiedBy( UUID.fromString( field.getModifiedBy() ) );
        }
        if ( field.getModifiedByGroup() != null ) {
            fieldDto.setModifiedByGroup( UUID.fromString( field.getModifiedByGroup() ) );
        }
        fieldDto.setVersion( field.getVersion() );

        return fieldDto;
    }
}
