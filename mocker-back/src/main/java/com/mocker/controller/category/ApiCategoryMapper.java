package com.mocker.controller.category;

import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.CategoryDto;
import com.mocker.domain.dto.GenerateTypeDto;
import com.mocker.domain.dto.SourceDto;
import com.mocker.domain.model.entity.Category;
import com.mocker.domain.model.entity.GenerateType;
import com.mocker.domain.model.entity.Source;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

import java.util.List;

/**
 * @author Luong Quoc Trung
 */

@Mapper(componentModel = "spring", uses = {
        ApiAbstractMapper.class})
public interface ApiCategoryMapper {

    CategoryDto map(Category category);

    @Mapping(target = "category", ignore = true)
    @Mapping(target = "sqlTypes", ignore = true)
    GenerateTypeDto map(GenerateType generateType);

    List<GenerateTypeDto> mapToGenerateTypesDto(List<GenerateType> generateTypes);

    @Named("mapHasGenerateTypes")
    CategoryDto mapWithEagerGenerateTypes(Category category);

    @Mapping(target = "generateType", ignore = true)
    SourceDto map(Source source);

    List<SourceDto> mapToSourcesDto(List<Source> sources);
}
