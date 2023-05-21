package com.mocker.controller.groupMember;

import com.mocker.controller.group.ApiGroupMapper;
import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.controller.user.ApiUserMapper;
import com.mocker.domain.dto.GroupMemberDto;
import com.mocker.domain.dto.GroupMemberPKDto;
import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.composite_key.GroupMemberPK;
import org.mapstruct.Mapper;

import java.util.List;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {
        ApiAbstractMapper.class,
        ApiUserMapper.class,
        ApiGroupMapper.class})
public interface ApiGroupMemberMapper {

    GroupMember map(GroupMemberDto groupMemberDto);

    GroupMemberDto map(GroupMember groupMember);

    GroupMemberPKDto map(GroupMemberPK groupMemberPK);

    GroupMemberPK map(GroupMemberPKDto groupMemberPKDto);

    List<GroupMemberDto> map(List<GroupMember> groupMembers);

}
