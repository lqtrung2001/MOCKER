package com.mocker.controller.project;

import com.mocker.controller.group.ApiGroupMapper;
import com.mocker.controller.schema.ApiSchemaMapper;
import com.mocker.domain.dto.ProjectDto;
import com.mocker.domain.model.entity.Project;
import java.util.UUID;
import javax.annotation.processing.Generated;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-06-06T21:19:18+0700",
    comments = "version: 1.5.3.Final, compiler: javac, environment: Java 18.0.2.1 (Oracle Corporation)"
)
@Component
public class ApiProjectMapperDecoratorImpl implements ApiProjectMapperDecorator {

    @Autowired
    private ApiGroupMapper apiGroupMapper;
    @Autowired
    private ApiSchemaMapper apiSchemaMapper;

    @Override
    public ProjectDto mapFetchSchemas(Project project) {
        if ( project == null ) {
            return null;
        }

        ProjectDto projectDto = new ProjectDto();

        projectDto.setId( project.getId() );
        projectDto.setName( project.getName() );
        projectDto.setDescription( project.getDescription() );
        projectDto.setGroup( apiGroupMapper.map( project.getGroup() ) );
        projectDto.setSchemas( apiSchemaMapper.map( project.getSchemas() ) );
        projectDto.setCreatedDate( project.getCreatedDate() );
        if ( project.getCreatedBy() != null ) {
            projectDto.setCreatedBy( UUID.fromString( project.getCreatedBy() ) );
        }
        if ( project.getCreatedByGroup() != null ) {
            projectDto.setCreatedByGroup( UUID.fromString( project.getCreatedByGroup() ) );
        }
        projectDto.setModifiedDate( project.getModifiedDate() );
        if ( project.getModifiedBy() != null ) {
            projectDto.setModifiedBy( UUID.fromString( project.getModifiedBy() ) );
        }
        if ( project.getModifiedByGroup() != null ) {
            projectDto.setModifiedByGroup( UUID.fromString( project.getModifiedByGroup() ) );
        }
        projectDto.setVersion( project.getVersion() );

        return projectDto;
    }
}
