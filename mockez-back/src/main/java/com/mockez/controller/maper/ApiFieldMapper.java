package com.mockez.controller.maper;

import com.mockez.domain.dto.FieldDto;
import com.mockez.domain.model.entity.Field;
import org.mapstruct.Mapping;

public interface ApiFieldMapper extends ApiAbstractMapper{

    @Override
    @Mapping(source = "id", target = "id")
    @Mapping(source = "version", target = "version")
    @Mapping(source = "name", target = "name")
    @Mapping(source = "sqlType", target = "sqlType")
    @Mapping(source = "generateType", target = "generateType")
    @Mapping(source = "option", target = "option")
    FieldDto map(Field field);

    @Override
    @Mapping(source = "id", target = "id")
    @Mapping(source = "version", target = "version")
    @Mapping(source = "name", target = "name")
    @Mapping(source = "sqlType", target = "sqlType")
    @Mapping(source = "generateType", target = "generateType")
    @Mapping(source = "option", target = "option")
    Field map(FieldDto fieldDto);
}
