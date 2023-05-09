package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.exception.BadRequestException;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.exception.PermissionException;
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

import java.util.Objects;
import java.util.Optional;
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
        if ((!groupRepository.getRoleUserInGroup(groupMember.getGroup().getId(), authId).equals(Role.GROUP_ADMIN)
                || !groupRepository.getRoleUserInGroup(groupMember.getGroup().getId(), authId).equals(Role.GROUP_ASSOCIATE))
                || (groupRepository.getRoleUserInGroup(groupMember.getGroup().getId(), groupMember.getUser().getId()).equals(Role.GROUP_ADMIN)
                && groupRepository.getRoleUserInGroup(groupMember.getGroup().getId(), authId).equals(Role.GROUP_ADMIN))) {
            throw new PermissionException(authId);
        }
        groupMemberRepository.deleteById(groupMember.getId());
        return groupMember;
    }

    @Override
    public GroupMember upsert(GroupMember groupMember) {
        Group group = groupRepository.findById(groupMember.getGroup().getId()).orElseThrow(NotFoundException::new);
        UUID authId = applicationContextHolder.getCurrentUser().getId();
        Role authRoleInGroup = groupRepository.getRoleUserInGroup(group.getId(), authId);
        // User is not allowed to change role unless having GROUP_ADMIN or GROUP_ASSOCIATE role.
        if (!authRoleInGroup.equals(Role.GROUP_ADMIN) && !authRoleInGroup.equals(Role.GROUP_ASSOCIATE)) {
            throw new PermissionException(authId);
        }
        UUID userId = groupMember.getUser().getId();
        if (authId == userId) {
            throw new BadRequestException("validation.change_role.can_not_change_role_of_self");
        }
        User user = userRepository.findById(userId).orElseThrow(NotFoundException::new);
        if (groupMember.getId() == null) {
            // Add user to group
            return groupMemberRepository.save(GroupMember.builder()
                    .id(GroupMemberPK.builder()
                            .userId(userId)
                            .groupId(groupMember.getGroup().getId())
                            .build())
                    .group(group)
                    .user(user)
                    .role(Role.USER)
                    .build());
        }
        Role oldRole = groupRepository.getRoleUserInGroup(groupMember.getGroup().getId(), userId);
        Role newRole = Optional.of(groupMember.getRole()).get();
        if (Objects.equals(oldRole, newRole)) {
            throw new BadRequestException("validation.can_not_change_the_same_role", oldRole.getValue());
        }
        if (authRoleInGroup.equals(Role.GROUP_ASSOCIATE) && (newRole.equals(Role.GROUP_ADMIN) || (oldRole.equals(Role.GROUP_ASSOCIATE) && newRole.equals(Role.USER)))) {
            throw new BadRequestException("validation.change_role.not_permitted");
        }
        if (newRole.equals(Role.GROUP_ADMIN)) {
            // Change the admin role to the user role
            GroupMember authGroupMember = groupMemberRepository.findById(GroupMemberPK.builder()
                            .groupId(groupMember.getId().getGroupId())
                            .userId(authId)
                            .build())
                    .orElseThrow(NotFoundException::new);
            authGroupMember.setRole(Role.USER);
            groupMemberRepository.save(authGroupMember);
        }
        return groupMemberRepository.save(groupMember);
    }

}
