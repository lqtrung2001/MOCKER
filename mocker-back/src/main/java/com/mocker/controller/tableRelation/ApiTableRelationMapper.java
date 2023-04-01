package com.mocker.controller.tableRelation;

import com.mocker.controller.field.ApiFieldMapper;
import com.mocker.domain.dto.TableRelationDto;
import com.mocker.domain.model.entity.TableRelation;
import org.mapstruct.Mapper;

import java.util.List;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {
        ApiTableRelationMapper.class,
        ApiFieldMapper.class})
public interface ApiTableRelationMapper {

    TableRelation map(TableRelationDto tableRelationDto);

    TableRelationDto map(TableRelation tableRelation);

    List<TableRelationDto> map(List<TableRelation> tableRelations);

}
