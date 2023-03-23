package com.mocker.controller.schema;

import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.controller.project.ApiProjectMapper;
import com.mocker.domain.dto.SchemaDto;
import com.mocker.domain.model.entity.Schema;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {
        ApiAbstractMapper.class,
        ApiProjectMapper.class})
public interface ApiSchemaMapper {

    Schema map(SchemaDto schemaDto);

    List<SchemaDto> map(List<Schema> schemas);

    @Mapping(target = "tables", ignore = true)
    SchemaDto map(Schema schema);

}
