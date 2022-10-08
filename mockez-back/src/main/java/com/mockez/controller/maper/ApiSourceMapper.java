package com.mockez.controller.maper;

import com.mockez.domain.model.SourceDto;
import com.mockez.domain.model.entity.Source;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
@Mapper
public interface ApiSourceMapper extends ApiAbstractMapper{

    @Override
    @Mapping(source = "id", target = "id")
    @Mapping(source = "value", target = "value")
    @Mapping(source = "generateType", target = "generateType")
    @Mapping(source = "version", target = "version")
    SourceDto map(Source source);

    @Override
    @Mapping(source = "id", target = "id")
    @Mapping(source = "value", target = "value")
    @Mapping(source = "generateType", target = "generateType")
    @Mapping(source = "version", target = "version")
    Source map(SourceDto sourceDto);
}
