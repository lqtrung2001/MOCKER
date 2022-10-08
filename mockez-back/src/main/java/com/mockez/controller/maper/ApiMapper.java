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

public interface ApiMapper {
    default CategoryDto map(Category category) {
        return null;
    }
    default Category map(CategoryDto categoryDto) {
        return null;
    }
    default GenerateReqDto map(GenerateReq generateReq) {
        return null;
    }
    default GenerateReq map(GenerateReqDto generateReqDto) {
        return null;
    }
    default GenerateTypeDto map(GenerateType generateType) {
        return null;
    }
    default GenerateType map(GenerateTypeDto generateTypeDto) {
        return null;
    }
    default SQLTypeDto map(SQLType sqlType) {
        return null;
    }
    default SQLType map(SQLTypeDto sqlTypeDto) {
        return null;
    }
    default FieldDto map(Field field) {
        return null;
    }
    default Field map(FieldDto fieldDto) {
        return null;
    }
    default OptionDto map(Option option) {
        return null;
    }
    default Option map(OptionDto optionDto) {
        return null;
    }
    default SourceDto map(Source source) {
        return null;
    }
    default Source map(SourceDto sourceDto) {
        return null;
    }
}
