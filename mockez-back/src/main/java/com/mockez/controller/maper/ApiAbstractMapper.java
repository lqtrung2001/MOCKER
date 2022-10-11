package com.mockez.controller.maper;

import com.mockez.domain.dto.CategoryDto;
import com.mockez.domain.dto.FieldDto;
import com.mockez.domain.dto.GenerateReqDto;
import com.mockez.domain.dto.GenerateTypeDto;
import com.mockez.domain.dto.OptionDto;
import com.mockez.domain.dto.SQLTypeDto;
import com.mockez.domain.dto.SourceDto;
import com.mockez.domain.model.GenerateReq;
import com.mockez.domain.model.entity.Category;
import com.mockez.domain.model.entity.Field;
import com.mockez.domain.model.entity.GenerateType;
import com.mockez.domain.model.entity.Option;
import com.mockez.domain.model.entity.SQLType;
import com.mockez.domain.model.entity.Source;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

@Mapper(componentModel = "spring")
public interface ApiAbstractMapper {

    @Mapping(target = "generateTypes", ignore = true)
    CategoryDto map(Category category);

    @Named("mapHasGenerateType")
    CategoryDto mapHasGenerateType(Category category);

    Category map(CategoryDto categoryDto);

    GenerateReqDto map(GenerateReq generateReq);

    GenerateReq map(GenerateReqDto generateReqDto);

    @Mapping(target = "sources", ignore = true)
    @Mapping(target = "sqlTypes", ignore = true)
    GenerateTypeDto map(GenerateType generateType);

    GenerateType map(GenerateTypeDto generateTypeDto);

    @Mapping(target = "generateTypes", ignore = true)
    SQLTypeDto map(SQLType sqlType);

    SQLType map(SQLTypeDto sqlTypeDto);

    FieldDto map(Field field);

    Field map(FieldDto fieldDto);

    OptionDto map(Option option);

    Option map(OptionDto optionDto);

    SourceDto map(Source source);

    Source map(SourceDto sourceDto);
}
