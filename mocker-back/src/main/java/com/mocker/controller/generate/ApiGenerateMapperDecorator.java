package com.mocker.controller.generate;

import com.mocker.controller.mapper.ApiAbstractMapperDecorator;
import org.mapstruct.Mapper;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {ApiAbstractMapperDecorator.class})
public interface ApiGenerateMapperDecorator {
}
