package com.mockez.controller.maper;

import com.mockez.domain.model.OptionDto;
import com.mockez.domain.model.entity.Option;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper
public interface ApiOptionMapper extends ApiAbstractMapper {

    @Override
    @Mapping(source = "id", target = "id")
    @Mapping(source = "blank", target = "blank")
    @Mapping(source = "algorithm", target = "generateType")
    @Mapping(source = "field", target = "generateType")
    @Mapping(source = "version", target = "version")
    OptionDto map(Option option);

    @Override
    Option map(OptionDto optionDto);
}
