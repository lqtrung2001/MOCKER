package com.mocker.controller.sqlType;

import com.mocker.domain.dto.SQLTypeDto;
import com.mocker.domain.model.entity.SQLType;
import java.util.UUID;
import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-04-30T14:53:17+0700",
    comments = "version: 1.5.3.Final, compiler: javac, environment: Java 18.0.2.1 (Oracle Corporation)"
)
@Component
public class ApiSQLTypeMapperImpl implements ApiSQLTypeMapper {

    @Override
    public SQLTypeDto map(SQLType sqlType) {
        if ( sqlType == null ) {
            return null;
        }

        SQLTypeDto sQLTypeDto = new SQLTypeDto();

        sQLTypeDto.setId( sqlType.getId() );
        sQLTypeDto.setCode( sqlType.getCode() );
        sQLTypeDto.setDescription( sqlType.getDescription() );
        sQLTypeDto.setCreatedDate( sqlType.getCreatedDate() );
        if ( sqlType.getCreatedBy() != null ) {
            sQLTypeDto.setCreatedBy( UUID.fromString( sqlType.getCreatedBy() ) );
        }
        if ( sqlType.getCreatedByGroup() != null ) {
            sQLTypeDto.setCreatedByGroup( UUID.fromString( sqlType.getCreatedByGroup() ) );
        }
        sQLTypeDto.setModifiedDate( sqlType.getModifiedDate() );
        if ( sqlType.getModifiedBy() != null ) {
            sQLTypeDto.setModifiedBy( UUID.fromString( sqlType.getModifiedBy() ) );
        }
        if ( sqlType.getModifiedByGroup() != null ) {
            sQLTypeDto.setModifiedByGroup( UUID.fromString( sqlType.getModifiedByGroup() ) );
        }
        sQLTypeDto.setVersion( sqlType.getVersion() );

        return sQLTypeDto;
    }
}
