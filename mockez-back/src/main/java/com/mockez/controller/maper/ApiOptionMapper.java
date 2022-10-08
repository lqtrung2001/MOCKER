package com.mockez.controller.maper;

import com.mockez.domain.dto.OptionDto;
import com.mockez.domain.model.entity.Option;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper
public interface ApiOptionMapper extends ApiAbstractMapper {

    @Override
    @Mapping(source = "id", target = "id")
    @Mapping(source = "version", target = "version")
    @Mapping(source = "blank", target = "blank")
    @Mapping(source = "field", target = "field")
    OptionDto map(Option option);

    @Override
    @Mapping(source = "id", target = "id")
    @Mapping(source = "version", target = "version")
    @Mapping(source = "blank", target = "blank")
    @Mapping(source = "field", target = "field")
    Option map(OptionDto optionDto);
}
