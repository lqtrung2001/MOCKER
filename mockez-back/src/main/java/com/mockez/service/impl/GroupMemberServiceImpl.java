package com.mockez.service.impl;

import com.mockez.domain.model.entity.Group;
import com.mockez.domain.model.entity.GroupMember;
import com.mockez.domain.model.entity.User;
import com.mockez.domain.model.entity.composite_key.GroupMemberPK;
import com.mockez.domain.model.entity.enumeration.Role;
import com.mockez.repository.GroupMemberRepository;
import com.mockez.repository.GroupRepository;
import com.mockez.repository.UserRepository;
import com.mockez.service.GroupMemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Service
@Transactional
@RequiredArgsConstructor
public class GroupMemberServiceImpl implements GroupMemberService {

    private final GroupMemberRepository groupMemberRepository;
    private final GroupRepository groupRepository;
    private final UserRepository userRepository;

    @Override
    public GroupMemberPK delete(GroupMemberPK id) {
        groupMemberRepository.deleteById(id);
        return id;
    }

    @Override
    public GroupMemberPK add(GroupMemberPK groupMemberPK) {
        Group group = groupRepository.findById(groupMemberPK.getGroupId()).orElseThrow();
        User user = userRepository.findById(groupMemberPK.getUserId()).orElseThrow();
        groupMemberRepository.save(GroupMember.builder().id(groupMemberPK).group(group).user(user).role(Role.GROUP_ADMIN).build());
        return groupMemberPK;
    }
}
