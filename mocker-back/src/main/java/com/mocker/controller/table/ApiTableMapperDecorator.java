package com.mocker.controller.table;

import com.mocker.controller.mapper.ApiAbstractMapperDecorator;
import com.mocker.domain.dto.TableDto;
import com.mocker.domain.model.entity.Table;
import org.mapstruct.IterableMapping;
import org.mapstruct.Mapper;
import org.mapstruct.Named;

import java.util.List;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {ApiAbstractMapperDecorator.class})
public interface ApiTableMapperDecorator {

    @IterableMapping(qualifiedByName = "mapFetchFields")
    List<TableDto> mapToTablesDtoFetchFields(List<Table> tables);

    @Named("mapFetchFields")
    TableDto mapFetchFields(Table table);

}
