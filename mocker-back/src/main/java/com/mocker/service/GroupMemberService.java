package com.mocker.service;

import com.mocker.domain.model.entity.composite_key.GroupMemberPK;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface GroupMemberService {

    GroupMemberPK delete(GroupMemberPK id);

    GroupMemberPK add(GroupMemberPK id);
}
