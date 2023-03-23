package com.mocker.controller.option;

import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.OptionDto;
import com.mocker.domain.model.entity.Option;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {
        ApiAbstractMapper.class})
public interface ApiOptionMapper {
    @Mapping(target = "field", ignore = true)
    OptionDto map(Option option);
}
