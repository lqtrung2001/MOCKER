package com.mockez.controller.maper;

import com.mockez.domain.model.CategoryDto;
import com.mockez.domain.model.entity.Category;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper
public interface ApiCategoryMapper extends ApiAbstractMapper {

    @Override
    @Mapping(source = "id", target = "id")
    @Mapping(source = "type", target = "name")
    @Mapping(source = "description", target = "description")
    @Mapping(source = "generateTypes", target = "generateTypes")
    CategoryDto map(Category category);

    @Override
    @Mapping(source = "id", target = "id")
    @Mapping(source = "name", target = "type")
    @Mapping(source = "description", target = "description")
    @Mapping(source = "generateTypes", target = "generateTypes")
    Category map(CategoryDto categoryDto);
}
