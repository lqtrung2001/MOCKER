package com.mocker.controller.generate;

import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.GenerateTypeDto;
import com.mocker.domain.dto.TableDto;
import com.mocker.domain.model.entity.GenerateType;
import com.mocker.domain.model.entity.Table;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {ApiAbstractMapper.class})
public interface ApiGenerateMapper {

    @Mapping(target = "sources", ignore = true)
    @Mapping(target = "sqlTypes", ignore = true)
    GenerateTypeDto map(GenerateType generateType);

    GenerateType map(GenerateTypeDto generateTypeDto);

    Table map(TableDto tableDto);

    @Mapping(target = "fields", ignore = true)
    TableDto map(Table table);

}
