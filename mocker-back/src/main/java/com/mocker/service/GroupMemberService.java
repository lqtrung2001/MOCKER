package com.mocker.service;

import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.composite_key.GroupMemberPK;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface GroupMemberService {

    GroupMemberPK delete(GroupMemberPK groupMemberPK);

    GroupMember upsert(GroupMember groupMember);

    List<GroupMember> getGroupMembersByGroup(UUID groupId);
}
