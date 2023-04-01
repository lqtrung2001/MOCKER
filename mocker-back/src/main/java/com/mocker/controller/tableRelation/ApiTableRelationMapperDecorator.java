package com.mocker.controller.tableRelation;

import com.mocker.controller.table.ApiTableMapperDecorator;
import org.mapstruct.Mapper;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {ApiTableMapperDecorator.class})
public interface ApiTableRelationMapperDecorator {
}
