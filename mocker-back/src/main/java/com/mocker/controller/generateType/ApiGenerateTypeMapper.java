package com.mocker.controller.generateType;

import com.mocker.controller.category.ApiCategoryMapper;
import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.GenerateTypeDto;
import com.mocker.domain.model.entity.GenerateType;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {
        ApiAbstractMapper.class,
        ApiCategoryMapper.class})
public interface ApiGenerateTypeMapper {
    @Mapping(target = "category", ignore = true)
    @Mapping(target = "sqlTypes", ignore = true)
    @Mapping(target = "sources", ignore = true)
    GenerateTypeDto map(GenerateType generateType);
}
