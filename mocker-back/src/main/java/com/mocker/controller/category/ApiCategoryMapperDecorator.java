package com.mocker.controller.category;

import com.mocker.controller.mapper.ApiAbstractMapperDecorator;
import com.mocker.domain.dto.CategoryDto;
import com.mocker.domain.model.entity.Category;
import org.mapstruct.IterableMapping;
import org.mapstruct.Mapper;
import org.mapstruct.Named;

import java.util.List;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {ApiAbstractMapperDecorator.class})
public interface ApiCategoryMapperDecorator {

    @IterableMapping(qualifiedByName = "mapFetchGenerateTypes")
    List<CategoryDto> mapToCategoriesDtoFetchGenerateTypes(List<Category> categories);

    @Named("mapFetchGenerateTypes")
    CategoryDto mapFetchGenerateTypes(Category category);

}
