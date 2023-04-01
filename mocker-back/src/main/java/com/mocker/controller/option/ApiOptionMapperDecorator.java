package com.mocker.controller.option;

import com.mocker.controller.mapper.ApiAbstractMapperDecorator;
import org.mapstruct.Mapper;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {ApiAbstractMapperDecorator.class})
public interface ApiOptionMapperDecorator {
}
