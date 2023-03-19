package com.mocker.service;

import com.mocker.domain.model.entity.GroupMember;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface GroupMemberService {

    GroupMember delete(GroupMember groupMember);

    GroupMember upsert(GroupMember groupMember);
}
