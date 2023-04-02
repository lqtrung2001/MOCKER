package com.mocker.controller.category;

import com.mocker.controller.auth.ApiAuthMapper;
import com.mocker.controller.field.ApiFieldMapper;
import com.mocker.controller.generate.ApiGenerateMapper;
import com.mocker.controller.generateType.ApiGenerateTypeMapper;
import com.mocker.controller.group.ApiGroupMapper;
import com.mocker.controller.groupMember.ApiGroupMemberMapper;
import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.controller.mapper.ApiAbstractMapperDecorator;
import com.mocker.controller.option.ApiOptionMapper;
import com.mocker.controller.project.ApiProjectMapper;
import com.mocker.controller.schema.ApiSchemaMapper;
import com.mocker.controller.sqlType.ApiSQLTypeMapper;
import com.mocker.controller.table.ApiTableMapper;
import com.mocker.controller.tableRelation.ApiTableRelationMapper;
import com.mocker.controller.user.ApiUserMapper;
import com.mocker.domain.dto.CategoryDto;
import com.mocker.domain.dto.GenerateTypeDto;
import com.mocker.domain.model.entity.Category;
import com.mocker.domain.model.entity.GenerateType;
import org.mapstruct.IterableMapping;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

import java.util.List;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {
        ApiAbstractMapperDecorator.class,
        ApiAuthMapper.class,
        ApiCategoryMapper.class,
        ApiFieldMapper.class,
        ApiGenerateMapper.class,
        ApiGenerateTypeMapper.class,
        ApiGroupMapper.class,
        ApiGroupMemberMapper.class,
        ApiAbstractMapper.class,
        ApiOptionMapper.class,
        ApiProjectMapper.class,
        ApiSchemaMapper.class,
        ApiSQLTypeMapper.class,
        ApiTableMapper.class,
        ApiTableRelationMapper.class,
        ApiUserMapper.class})
public interface ApiCategoryMapperDecorator {

    @IterableMapping(qualifiedByName = "mapFetchGenerateTypes")
    List<CategoryDto> mapToCategoriesDtoFetchGenerateTypes(List<Category> categories);

    @Named("mapFetchGenerateTypes")
    @Mapping(target = "generateTypes", qualifiedByName = "mapToGenerateTypesDtoFetchSourcesDto")
    CategoryDto mapFetchGenerateTypes(Category category);

    @Named("mapToGenerateTypesDtoFetchSourcesDto")
    @IterableMapping(qualifiedByName = "mapToGenerateTypeFetchSourcesDto")
    List<GenerateTypeDto> mapToGenerateTypesDtoFetchSourcesDto(List<GenerateType> generateTypes);

    @Named("mapToGenerateTypeFetchSourcesDto")
    @Mapping(target = "category", ignore = true)
    @Mapping(target = "sqlTypes", ignore = true)
    GenerateTypeDto mapToGenerateTypeFetchSourcesDto(GenerateType generateType);

}
