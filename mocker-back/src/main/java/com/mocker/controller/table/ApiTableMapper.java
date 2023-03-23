package com.mocker.controller.table;

import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.controller.schema.ApiSchemaMapper;
import com.mocker.domain.dto.TableDto;
import com.mocker.domain.model.entity.Table;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

/**
 * @author Do Quoc Viet
 * @author Luong Quoc Trung
 */

@Mapper(componentModel = "spring", uses = {
        ApiAbstractMapper.class,
        ApiSchemaMapper.class})
public interface ApiTableMapper {

    Table map(TableDto tableDto);

    @Mapping(target = "fields", ignore = true)
    TableDto map(Table table);

}
