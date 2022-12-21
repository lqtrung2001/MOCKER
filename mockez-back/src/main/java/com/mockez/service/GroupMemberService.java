package com.mockez.service;

import com.mockez.domain.model.entity.composite_key.GroupMemberPK;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface GroupMemberService {

    GroupMemberPK delete(GroupMemberPK id);

    GroupMemberPK add(GroupMemberPK id);
}
