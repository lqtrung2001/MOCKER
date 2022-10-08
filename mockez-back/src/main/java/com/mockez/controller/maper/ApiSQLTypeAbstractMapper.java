package com.mockez.controller.maper;

import com.mockez.domain.model.SQLTypeDto;
import com.mockez.domain.model.entity.SQLType;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper
public interface ApiSQLTypeAbstractMapper extends ApiAbstractMapper {

    @Override
    @Mapping(source = "id",  target = "id")
    @Mapping(source = "code",  target = "code")
    @Mapping(source = "description",  target = "description")
    @Mapping(source = "generateTypes",  target = "generateTypes")
    SQLTypeDto map(SQLType sqlType);

    @Override
    @Mapping(source = "id",  target = "id")
    @Mapping(source = "code",  target = "code")
    @Mapping(source = "description",  target = "description")
    @Mapping(source = "generateTypes",  target = "generateTypes")
    SQLType map(SQLTypeDto sqlTypeDto);
}
