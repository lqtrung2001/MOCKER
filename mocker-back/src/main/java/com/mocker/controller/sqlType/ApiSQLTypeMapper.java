package com.mocker.controller.SQLType;

import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.GenerateTypeDto;
import com.mocker.domain.dto.SQLTypeDto;
import com.mocker.domain.model.entity.GenerateType;
import com.mocker.domain.model.entity.SQLType;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;


/**
 * @author Luong Quoc Trung
 */

@Mapper(componentModel = "spring", uses = {ApiAbstractMapper.class})
public interface ApiSQLTypeMapper {

    SQLTypeDto map(SQLType sqlType);

    @Mapping(target = "category", ignore = true)
    @Mapping(target = "sqlTypes", ignore = true)
    @Mapping(target = "sources", ignore = true)
    GenerateTypeDto map(GenerateType generateType);

    List<GenerateTypeDto> mapToGenerateTypesDto(List<GenerateType> generateTypes);
}
