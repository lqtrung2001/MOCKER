package com.mocker.controller.generateType;

import com.mocker.controller.mapper.ApiAbstractMapper;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring", uses = {ApiAbstractMapper.class})
public interface ApiGenerateTypeMapper {
}
