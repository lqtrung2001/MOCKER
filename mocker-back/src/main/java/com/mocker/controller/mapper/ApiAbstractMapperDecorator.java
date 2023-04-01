package com.mocker.controller.mapper;

import org.mapstruct.Mapper;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {ApiAbstractMapper.class})
public interface ApiAbstractMapperDecorator {
}
