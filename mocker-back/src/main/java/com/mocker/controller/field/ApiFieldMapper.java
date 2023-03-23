package com.mocker.controller.field;

import com.mocker.controller.generateType.ApiGenerateTypeMapper;
import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.controller.option.ApiOptionMapper;
import com.mocker.controller.project.ApiProjectMapper;
import com.mocker.controller.sqlType.ApiSQLTypeMapper;
import com.mocker.controller.table.ApiTableMapper;
import com.mocker.controller.tableRelation.ApiTableRelationMapper;
import com.mocker.domain.dto.FieldDto;
import com.mocker.domain.model.entity.Field;
import org.mapstruct.Mapper;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {
        ApiAbstractMapper.class,
        ApiSQLTypeMapper.class,
        ApiGenerateTypeMapper.class,
        ApiOptionMapper.class,
        ApiProjectMapper.class,
        ApiTableMapper.class,
        ApiTableRelationMapper.class})
public interface ApiFieldMapper {
    FieldDto map(Field field);
}
