package com.mocker.service.impl;

import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.User;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.repository.GroupMemberRepository;
import com.mocker.repository.GroupRepository;
import com.mocker.repository.UserRepository;
import com.mocker.service.GroupMemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Service
@Transactional
@RequiredArgsConstructor
public class GroupMemberServiceImpl implements GroupMemberService {

    private final GroupMemberRepository groupMemberRepository;
    private final GroupRepository groupRepository;
    private final UserRepository userRepository;

    @Override
    public GroupMember delete(GroupMember groupMember) {
        if (groupMemberRepository.findById(groupMember.getId()).isEmpty()) {
            throw new NotFoundException("GroupMember with id " + groupMember.getId() + " validation.data_not_found");
        }
        groupMemberRepository.deleteById(groupMember.getId());
        return groupMember;
    }

    @Override
    public GroupMember upsert(GroupMember groupMember) {
        UUID groupId = groupMember.getGroup().getId();
        Group group = groupRepository.findById(groupId).orElseThrow(() -> new NotFoundException("Group with id: " + groupId + " validation.data_not_found"));
        UUID userId = groupMember.getUser().getId();
        User user = userRepository.findById(userId).orElseThrow(() -> new NotFoundException("User with id: " + userId + " validation.data_not_found"));
        groupMemberRepository.save(GroupMember.builder()
                .id(groupMember.getId())
                .group(group)
                .user(user)
                .role(Role.GROUP_ADMIN)
                .build());
        return groupMember;
    }
}
