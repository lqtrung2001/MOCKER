package com.mockez.controller.maper;

import com.mockez.domain.dto.CategoryDto;
import com.mockez.domain.model.entity.Category;
import org.mapstruct.Mapping;

public interface ApiCategoryMapper extends ApiAbstractMapper {

    @Override
    @Mapping(source = "id", target = "id")
    @Mapping(source = "version", target = "version")
    @Mapping(source = "name", target = "name")
    @Mapping(source = "description", target = "description")
//    @Mapping(source = "generateTypes", target = "generateTypes")
    CategoryDto map(Category category);

    @Override
    @Mapping(source = "id", target = "id")
    @Mapping(source = "version", target = "version")
    @Mapping(source = "name", target = "name")
    @Mapping(source = "description", target = "description")
//    @Mapping(source = "generateTypes", target = "generateTypes")
    Category map(CategoryDto categoryDto);
}
