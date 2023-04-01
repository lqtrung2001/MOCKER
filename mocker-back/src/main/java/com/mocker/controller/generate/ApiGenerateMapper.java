package com.mocker.controller.generate;

import com.mocker.controller.mapper.ApiAbstractMapper;
import org.mapstruct.Mapper;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {ApiAbstractMapper.class})
public interface ApiGenerateMapper {

}
