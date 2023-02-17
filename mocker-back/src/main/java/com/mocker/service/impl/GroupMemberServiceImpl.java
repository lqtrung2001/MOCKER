package com.mocker.service.impl;

import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.User;
import com.mocker.domain.model.entity.composite_key.GroupMemberPK;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.repository.GroupMemberRepository;
import com.mocker.repository.GroupRepository;
import com.mocker.repository.UserRepository;
import com.mocker.service.GroupMemberService;
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
