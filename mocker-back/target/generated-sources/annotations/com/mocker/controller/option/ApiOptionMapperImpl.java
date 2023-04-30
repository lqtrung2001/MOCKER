package com.mocker.controller.option;

import com.mocker.domain.dto.OptionDto;
import com.mocker.domain.model.entity.Option;
import java.util.UUID;
import javax.annotation.processing.Generated;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-04-30T14:53:16+0700",
    comments = "version: 1.5.3.Final, compiler: javac, environment: Java 18.0.2.1 (Oracle Corporation)"
)
@Component
public class ApiOptionMapperImpl implements ApiOptionMapper {

    @Override
    public OptionDto map(Option option) {
        if ( option == null ) {
            return null;
        }

        OptionDto optionDto = new OptionDto();

        optionDto.setId( option.getId() );
        optionDto.setBlank( option.getBlank() );
        optionDto.setCreatedDate( option.getCreatedDate() );
        if ( option.getCreatedBy() != null ) {
            optionDto.setCreatedBy( UUID.fromString( option.getCreatedBy() ) );
        }
        if ( option.getCreatedByGroup() != null ) {
            optionDto.setCreatedByGroup( UUID.fromString( option.getCreatedByGroup() ) );
        }
        optionDto.setModifiedDate( option.getModifiedDate() );
        if ( option.getModifiedBy() != null ) {
            optionDto.setModifiedBy( UUID.fromString( option.getModifiedBy() ) );
        }
        if ( option.getModifiedByGroup() != null ) {
            optionDto.setModifiedByGroup( UUID.fromString( option.getModifiedByGroup() ) );
        }
        optionDto.setVersion( option.getVersion() );

        return optionDto;
    }
}
