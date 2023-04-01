package com.mocker.controller.generateType;

import com.mocker.controller.mapper.ApiAbstractMapperDecorator;
import org.mapstruct.Mapper;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {ApiAbstractMapperDecorator.class})
public class ApiGenerateTypeMapperDecorator {
}
