package com.mockez.controller.maper;

import com.mockez.domain.dto.GenerateReqDto;
import com.mockez.domain.model.GenerateReq;
import org.mapstruct.Mapping;

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
