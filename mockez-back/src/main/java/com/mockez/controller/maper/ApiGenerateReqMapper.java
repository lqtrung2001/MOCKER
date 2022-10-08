package com.mockez.controller.maper;

import com.mockez.domain.model.GenerateReq;
import com.mockez.domain.model.GenerateReqDto;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
@Mapper
public interface ApiGenerateReqMapper extends ApiAbstractMapper{

    @Override
    @Mapping(source = "row", target = "row")
    @Mapping(source = "fields", target = "fields")
    GenerateReqDto map(GenerateReq generateReq);

    @Override
    @Mapping(source = "row", target = "row")
    @Mapping(source = "fields", target = "fields")
    GenerateReq map(GenerateReqDto generateReqDto);
}
