package com.mockez.controller.maper;

import com.mockez.domain.model.GenerateTypeDto;
import com.mockez.domain.model.entity.GenerateType;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper
public interface ApiGenerateTypeMapper extends ApiAbstractMapper {

    @Override
    @Mapping(source = "id", target = "id")
    @Mapping(source = "version", target = "version")
    @Mapping(source = "code", target = "code")
    @Mapping(source = "description", target = "description")
    @Mapping(source = "category", target = "category")
    @Mapping(source = "sources", target = "sources")
    @Mapping(source = "sqlTypes", target = "sqlTypes")
    GenerateTypeDto map(GenerateType generateType);

    @Override
    @Mapping(source = "id", target = "id")
    @Mapping(source = "version", target = "version")
    @Mapping(source = "code", target = "code")
    @Mapping(source = "description", target = "description")
    @Mapping(source = "category", target = "category")
    @Mapping(source = "sources", target = "sources")
    @Mapping(source = "sqlTypes", target = "sqlTypes")
    GenerateType map(GenerateTypeDto generateTypeDto);
}
