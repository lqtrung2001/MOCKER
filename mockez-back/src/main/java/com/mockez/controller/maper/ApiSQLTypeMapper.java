package com.mockez.controller.maper;

import com.mockez.domain.model.SQLTypeDto;
import com.mockez.domain.model.entity.SQLType;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper
public interface ApiSQLTypeMapper {
    @Mapping(source = "id",  target = "id")
    @Mapping(source = "code",  target = "code")
    @Mapping(source = "description",  target = "description")
    @Mapping(source = "generateTypes",  target = "generateTypes")
    SQLType toEntity(SQLTypeDto sqlTypeDto);

    @Mapping(source = "id",  target = "id")
    @Mapping(source = "code",  target = "code")
    @Mapping(source = "description",  target = "description")
    @Mapping(source = "generateTypes",  target = "generateTypes")
    SQLTypeDto toDTO(SQLType sqlType);
}
