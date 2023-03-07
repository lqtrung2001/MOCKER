package com.mocker.controller.option;

import com.mocker.domain.model.entity.Option;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring")
public interface ApiOptionMapper {

    @Mapping(target = "field", ignore = true)
    com.mocker.domain.dto.OptionDto map(Option option);

}
