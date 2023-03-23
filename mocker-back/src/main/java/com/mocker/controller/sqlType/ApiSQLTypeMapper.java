package com.mocker.controller.sqlType;

import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.SQLTypeDto;
import com.mocker.domain.model.entity.SQLType;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;


/**
 * @author Luong Quoc Trung
 */

@Mapper(componentModel = "spring", uses = {
        ApiAbstractMapper.class})
public interface ApiSQLTypeMapper {
    @Mapping(target = "generateTypes", ignore = true)
    SQLTypeDto map(SQLType sqlType);
}
