package com.mocker.controller.group;

import com.mocker.controller.groupMember.ApiGroupMemberMapper;
import com.mocker.controller.project.ApiProjectMapper;
import com.mocker.domain.dto.GroupDto;
import com.mocker.domain.dto.GroupMemberDto;
import com.mocker.domain.dto.ProjectDto;
import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.Project;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.annotation.processing.Generated;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2023-04-30T14:53:17+0700",
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
        groupDto.setProjects( projectListToProjectDtoList( group.getProjects() ) );
        groupDto.setGroupMembers( groupMemberListToGroupMemberDtoList( group.getGroupMembers() ) );
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

    protected List<ProjectDto> projectListToProjectDtoList(List<Project> list) {
        if ( list == null ) {
            return null;
        }

        List<ProjectDto> list1 = new ArrayList<ProjectDto>( list.size() );
        for ( Project project : list ) {
            list1.add( apiProjectMapper.map( project ) );
        }

        return list1;
    }

    protected List<GroupMemberDto> groupMemberListToGroupMemberDtoList(List<GroupMember> list) {
        if ( list == null ) {
            return null;
        }

        List<GroupMemberDto> list1 = new ArrayList<GroupMemberDto>( list.size() );
        for ( GroupMember groupMember : list ) {
            list1.add( apiGroupMemberMapper.map( groupMember ) );
        }

        return list1;
    }
}
