package com.mockez.controller.maper;

import com.mockez.domain.model.FieldDto;
import com.mockez.domain.model.entity.Field;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
@Mapper
public interface ApiFieldMapper extends ApiAbstractMapper{

    @Override
    @Mapping(source = "id", target = "id")
    @Mapping(source = "name", target = "name")
    @Mapping(source = "SQLType", target = "sqlType")
    @Mapping(source = "generateType", target = "generateType")
    @Mapping(source = "option", target = "option")
    @Mapping(source = "version", target = "version")
    FieldDto map(Field field);

    @Override
    @Mapping(source = "id", target = "id")
    @Mapping(source = "name", target = "name")
    @Mapping(source = "sqlType", target = "SQLType")
    @Mapping(source = "generateType", target = "generateType")
    @Mapping(source = "option", target = "option")
    @Mapping(source = "version", target = "version")
    Field map(FieldDto fieldDto);
}