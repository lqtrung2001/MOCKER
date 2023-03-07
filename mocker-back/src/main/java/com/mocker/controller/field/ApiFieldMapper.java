package com.mocker.controller.field;

import com.mocker.controller.option.ApiOptionMapper;
import com.mocker.controller.sqlType.ApiSQLTypeMapper;
import com.mocker.domain.dto.FieldDto;
import com.mocker.domain.model.entity.Field;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {ApiSQLTypeMapper.class, ApiOptionMapper.class})
public interface ApiFieldMapper {

    @Mapping(target = "table", ignore = true)
    FieldDto map(Field field);


}
