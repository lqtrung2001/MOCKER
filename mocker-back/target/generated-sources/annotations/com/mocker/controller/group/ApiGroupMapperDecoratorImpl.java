package com.mocker.controller.group;

import com.mocker.controller.groupMember.ApiGroupMemberMapper;
import com.mocker.controller.project.ApiProjectMapper;
import com.mocker.domain.dto.GroupDto;
import com.mocker.domain.model.entity.Group;
import java.util.ArrayList;
import java.util.List;
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
public class ApiGroupMapperDecoratorImpl implements ApiGroupMapperDecorator {

    @Autowired
    private ApiGroupMemberMapper apiGroupMemberMapper;
    @Autowired
    private ApiProjectMapper apiProjectMapper;

    @Override
    public GroupDto mapFetchProjectsAndGroupMembers(Group group) {
        if ( group == null ) {
            return null;
        }

        GroupDto groupDto = new GroupDto();

        groupDto.setId( group.getId() );
        groupDto.setName( group.getName() );
        groupDto.setDescription( group.getDescription() );
        groupDto.setProjects( apiProjectMapper.map( group.getProjects() ) );
        groupDto.setGroupMembers( apiGroupMemberMapper.map( group.getGroupMembers() ) );
        groupDto.setCreatedDate( group.getCreatedDate() );
        if ( group.getCreatedBy() != null ) {
            groupDto.setCreatedBy( UUID.fromString( group.getCreatedBy() ) );
        }
        if ( group.getCreatedByGroup() != null ) {
            groupDto.setCreatedByGroup( UUID.fromString( group.getCreatedByGroup() ) );
        }
        groupDto.setModifiedDate( group.getModifiedDate() );
        if ( group.getModifiedBy() != null ) {
            groupDto.setModifiedBy( UUID.fromString( group.getModifiedBy() ) );
        }
        if ( group.getModifiedByGroup() != null ) {
            groupDto.setModifiedByGroup( UUID.fromString( group.getModifiedByGroup() ) );
        }
        groupDto.setVersion( group.getVersion() );

        return groupDto;
    }

    @Override
    public List<GroupDto> mapToGroupsDtoFetchGroupMembers(List<Group> groups) {
        if ( groups == null ) {
            return null;
        }

        List<GroupDto> list = new ArrayList<GroupDto>( groups.size() );
        for ( Group group : groups ) {
            list.add( mapFetchGroupMembers( group ) );
        }

        return list;
    }

    @Override
    public GroupDto mapFetchGroupMembers(Group group) {
        if ( group == null ) {
            return null;
        }

        GroupDto groupDto = new GroupDto();

        groupDto.setId( group.getId() );
        groupDto.setName( group.getName() );
        groupDto.setDescription( group.getDescription() );
        groupDto.setGroupMembers( apiGroupMemberMapper.map( group.getGroupMembers() ) );
        groupDto.setCreatedDate( group.getCreatedDate() );
        if ( group.getCreatedBy() != null ) {
            groupDto.setCreatedBy( UUID.fromString( group.getCreatedBy() ) );
        }
        if ( group.getCreatedByGroup() != null ) {
            groupDto.setCreatedByGroup( UUID.fromString( group.getCreatedByGroup() ) );
        }
        groupDto.setModifiedDate( group.getModifiedDate() );
        if ( group.getModifiedBy() != null ) {
            groupDto.setModifiedBy( UUID.fromString( group.getModifiedBy() ) );
        }
        if ( group.getModifiedByGroup() != null ) {
            groupDto.setModifiedByGroup( UUID.fromString( group.getModifiedByGroup() ) );
        }
        groupDto.setVersion( group.getVersion() );

        return groupDto;
    }
}
