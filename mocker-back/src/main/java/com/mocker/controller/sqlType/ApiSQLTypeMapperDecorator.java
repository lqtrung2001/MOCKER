package com.mocker.controller.sqlType;

import com.mocker.controller.table.ApiTableMapperDecorator;
import org.mapstruct.Mapper;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {ApiTableMapperDecorator.class})
public class ApiSQLTypeMapperDecorator {
}
