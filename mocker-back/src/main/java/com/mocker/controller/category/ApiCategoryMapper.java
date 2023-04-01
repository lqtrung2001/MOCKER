package com.mocker.controller.category;

import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.CategoryDto;
import com.mocker.domain.model.entity.Category;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {
        ApiAbstractMapper.class})
public interface ApiCategoryMapper {

    Category map(CategoryDto categoryDto);

    @Mapping(target = "generateTypes", ignore = true)
    CategoryDto map(Category category);

}
