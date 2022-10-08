package com.mockez.controller.maper;

import com.mockez.domain.dto.SourceDto;
import com.mockez.domain.model.entity.Source;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
@Mapper
public interface ApiSourceMapper extends ApiAbstractMapper{

    @Override
    @Mapping(source = "id", target = "id")
    @Mapping(source = "version", target = "version")
    @Mapping(source = "value", target = "value")
    @Mapping(source = "generateType", target = "generateType")
    SourceDto map(Source source);

    @Override
    @Mapping(source = "id", target = "id")
    @Mapping(source = "version", target = "version")
    @Mapping(source = "value", target = "value")
    @Mapping(source = "generateType", target = "generateType")
    Source map(SourceDto sourceDto);
}
