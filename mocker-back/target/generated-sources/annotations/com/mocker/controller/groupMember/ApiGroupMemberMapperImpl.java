package com.mocker.controller.groupMember;

import com.mocker.controller.group.ApiGroupMapper;
import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.controller.user.ApiUserMapper;
import com.mocker.domain.dto.GroupMemberDto;
import com.mocker.domain.dto.GroupMemberPKDto;
import com.mocker.domain.dto.RoleDto;
import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.composite_key.GroupMemberPK;
import com.mocker.domain.model.entity.enumeration.Role;
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
public class ApiGroupMemberMapperImpl implements ApiGroupMemberMapper {

    @Autowired
    private ApiAbstractMapper apiAbstractMapper;
    @Autowired
    private ApiUserMapper apiUserMapper;
    @Autowired
    private ApiGroupMapper apiGroupMapper;

    @Override
    public GroupMember map(GroupMemberDto groupMemberDto) {
        if ( groupMemberDto == null ) {
            return null;
        }

        GroupMember.GroupMemberBuilder<?, ?> groupMember = GroupMember.builder();

        groupMember.createdDate( groupMemberDto.getCreatedDate() );
        if ( groupMemberDto.getCreatedBy() != null ) {
            groupMember.createdBy( groupMemberDto.getCreatedBy().toString() );
        }
        if ( groupMemberDto.getCreatedByGroup() != null ) {
            groupMember.createdByGroup( groupMemberDto.getCreatedByGroup().toString() );
        }
        groupMember.modifiedDate( groupMemberDto.getModifiedDate() );
        if ( groupMemberDto.getModifiedBy() != null ) {
            groupMember.modifiedBy( groupMemberDto.getModifiedBy().toString() );
        }
        if ( groupMemberDto.getModifiedByGroup() != null ) {
            groupMember.modifiedByGroup( groupMemberDto.getModifiedByGroup().toString() );
        }
        groupMember.version( groupMemberDto.getVersion() );
        groupMember.id( map( groupMemberDto.getId() ) );
        groupMember.role( roleDtoToRole( groupMemberDto.getRole() ) );
        groupMember.user( apiUserMapper.map( groupMemberDto.getUser() ) );
        groupMember.group( apiGroupMapper.map( groupMemberDto.getGroup() ) );

        return groupMember.build();
    }

    @Override
    public GroupMemberDto map(GroupMember groupMember) {
        if ( groupMember == null ) {
            return null;
        }

        GroupMemberDto groupMemberDto = new GroupMemberDto();

        groupMemberDto.setId( map( groupMember.getId() ) );
        groupMemberDto.setRole( apiAbstractMapper.map( groupMember.getRole() ) );
        groupMemberDto.setUser( apiUserMapper.map( groupMember.getUser() ) );
        groupMemberDto.setGroup( apiGroupMapper.map( groupMember.getGroup() ) );
        groupMemberDto.setCreatedDate( groupMember.getCreatedDate() );
        if ( groupMember.getCreatedBy() != null ) {
            groupMemberDto.setCreatedBy( UUID.fromString( groupMember.getCreatedBy() ) );
        }
        if ( groupMember.getCreatedByGroup() != null ) {
            groupMemberDto.setCreatedByGroup( UUID.fromString( groupMember.getCreatedByGroup() ) );
        }
        groupMemberDto.setModifiedDate( groupMember.getModifiedDate() );
        if ( groupMember.getModifiedBy() != null ) {
            groupMemberDto.setModifiedBy( UUID.fromString( groupMember.getModifiedBy() ) );
        }
        if ( groupMember.getModifiedByGroup() != null ) {
            groupMemberDto.setModifiedByGroup( UUID.fromString( groupMember.getModifiedByGroup() ) );
        }
        groupMemberDto.setVersion( groupMember.getVersion() );

        return groupMemberDto;
    }

    @Override
    public GroupMemberPKDto map(GroupMemberPK groupMemberPK) {
        if ( groupMemberPK == null ) {
            return null;
        }

        GroupMemberPKDto groupMemberPKDto = new GroupMemberPKDto();

        groupMemberPKDto.setGroupId( groupMemberPK.getGroupId() );
        groupMemberPKDto.setUserId( groupMemberPK.getUserId() );

        return groupMemberPKDto;
    }

    @Override
    public GroupMemberPK map(GroupMemberPKDto groupMemberPKDto) {
        if ( groupMemberPKDto == null ) {
            return null;
        }

        GroupMemberPK.GroupMemberPKBuilder<?, ?> groupMemberPK = GroupMemberPK.builder();

        groupMemberPK.groupId( groupMemberPKDto.getGroupId() );
        groupMemberPK.userId( groupMemberPKDto.getUserId() );

        return groupMemberPK.build();
    }

    @Override
    public List<GroupMemberDto> map(List<GroupMember> groupMembers) {
        if ( groupMembers == null ) {
            return null;
        }

        List<GroupMemberDto> list = new ArrayList<GroupMemberDto>( groupMembers.size() );
        for ( GroupMember groupMember : groupMembers ) {
            list.add( map( groupMember ) );
        }

        return list;
    }

    protected Role roleDtoToRole(RoleDto roleDto) {
        if ( roleDto == null ) {
            return null;
        }

        Role role;

        switch ( roleDto ) {
            case GROUP_ADMIN: role = Role.GROUP_ADMIN;
            break;
            case GROUP_ASSOCIATE: role = Role.GROUP_ASSOCIATE;
            break;
            case USER: role = Role.USER;
            break;
            case ADMIN: role = Role.ADMIN;
            break;
            default: throw new IllegalArgumentException( "Unexpected enum constant: " + roleDto );
        }

        return role;
    }
}
