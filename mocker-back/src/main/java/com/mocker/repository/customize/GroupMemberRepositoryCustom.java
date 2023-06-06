package com.mocker.repository.customize;

import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.enumeration.Role;

import java.util.List;
import java.util.UUID;

public interface GroupMemberRepositoryCustom {
    List<GroupMember> getGroupMembersByGroupId(UUID groupId, List<Role> roles);
}
