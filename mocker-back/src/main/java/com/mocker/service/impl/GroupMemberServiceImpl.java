package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.exception.PermissionException;
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

import java.util.Objects;
import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Service
@Transactional
@RequiredArgsConstructor
public class GroupMemberServiceImpl implements GroupMemberService {

    private final ApplicationContextHolder applicationContextHolder;
    private final GroupMemberRepository groupMemberRepository;
    private final GroupRepository groupRepository;
    private final UserRepository userRepository;

    @Override
    public GroupMember delete(GroupMember groupMember) {
        UUID authId = applicationContextHolder.getCurrentUser().getId();
        if (groupMemberRepository.findById(groupMember.getId()).isEmpty()) {
            throw new NotFoundException(groupMember.getId().getGroupId());
        }
        if ((!groupRepository.getRoleUserInGroup(groupMember.getGroup().getId(), authId).equals("GROUP_ADMIN")
                || !groupRepository.getRoleUserInGroup(groupMember.getGroup().getId(), authId).equals("GROUP_ASSOCIATE"))
                || (groupRepository.getRoleUserInGroup(groupMember.getGroup().getId(), groupMember.getUser().getId()).equals("GROUP_ADMIN")
                && groupRepository.getRoleUserInGroup(groupMember.getGroup().getId(), authId).equals("GROUP_ADMIN"))) {
            throw new PermissionException(authId);
        }
        groupMemberRepository.deleteById(groupMember.getId());
        return groupMember;
    }

    @Override
    public GroupMember upsert(GroupMember groupMember) {
        UUID authId = applicationContextHolder.getCurrentUser().getId();
        boolean isNew = groupMember.getId() == null;
        UUID groupId = groupMember.getGroup().getId();
        Group group = groupRepository.findById(groupId).orElseThrow(() -> new NotFoundException(groupId));
        UUID userId = groupMember.getUser().getId();
        User user = userRepository.findById(userId).orElseThrow(() -> new NotFoundException(userId));
        if (!groupRepository.getRoleUserInGroup(groupId, authId).equals("GROUP_ADMIN")
                || !groupRepository.getRoleUserInGroup(group.getId(), authId).equals("GROUP_ASSOCIATE")) {
            throw new PermissionException(authId);
        }
        if (isNew) {
            groupMemberRepository.save(GroupMember.builder()
                    .id(groupMember.getId())
                    .group(group)
                    .user(user)
                    .role(Role.USER)
                    .build());
        } else {
            String oldRole = groupRepository.getRoleUserInGroup(groupId, userId);
            String newRole = groupMember.getRole().toString();
            //only role Group_admin can change role
            if (!Objects.equals(oldRole, newRole) && !groupRepository.getRoleUserInGroup(groupId, authId).equals("GROUP_ADMIN")) {
                throw new PermissionException(authId);
            }
            groupMemberRepository.save(GroupMember.builder()
                    .id(groupMember.getId())
                    .group(group)
                    .user(user)
                    .role(Role.valueOf(newRole))
                    .build());
        }
        return groupMember;
    }

}
