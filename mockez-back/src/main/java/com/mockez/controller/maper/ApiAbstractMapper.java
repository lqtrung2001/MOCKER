package com.mockez.controller.maper;

import com.mockez.domain.model.CategoryDto;
import com.mockez.domain.model.FieldDto;
import com.mockez.domain.model.GenerateReq;
import com.mockez.domain.model.GenerateReqDto;
import com.mockez.domain.model.GenerateTypeDto;
import com.mockez.domain.model.OptionDto;
import com.mockez.domain.model.SQLTypeDto;
import com.mockez.domain.model.SourceDto;
import com.mockez.domain.model.entity.Category;
import com.mockez.domain.model.entity.Field;
import com.mockez.domain.model.entity.GenerateType;
import com.mockez.domain.model.entity.Option;
import com.mockez.domain.model.entity.SQLType;
import com.mockez.domain.model.entity.Source;

public interface ApiAbstractMapper {
    CategoryDto map(Category category);

    Category map(CategoryDto categoryDto);

    GenerateReqDto map(GenerateReq generateReq);

    GenerateReq map(GenerateReqDto generateReqDto);

    GenerateTypeDto map(GenerateType generateType);

    GenerateType map(GenerateTypeDto generateTypeDto);

    SQLTypeDto map(SQLType sqlType);

    SQLType map(SQLTypeDto sqlTypeDto);

    FieldDto map(Field field);

    Field map(FieldDto fieldDto);

    OptionDto map(Option option);

    Option map(OptionDto optionDto);

    SourceDto map(Source source);

    Source map(SourceDto sourceDto);
}
