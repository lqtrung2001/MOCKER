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
import com.mocker.service.PermissionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
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
    private final PermissionService permissionService;

    @Override
    public GroupMemberPK delete(GroupMemberPK groupMemberPK) {
        permissionService.checkPermission(groupMemberPK.getGroupId(), Group.class);
        UUID authId = applicationContextHolder.getCurrentUser().getId();
        GroupMember groupMember = groupMemberRepository.findById(groupMemberPK).orElseThrow(() -> new NotFoundException(groupMemberPK.getGroupId()));
        Role roleAuthInGroup = groupRepository.getRoleUserInGroup(groupMemberPK.getGroupId(), authId);
        if ((!roleAuthInGroup.equals(Role.GROUP_ADMIN) && !roleAuthInGroup.equals(Role.GROUP_ASSOCIATE))
                || (roleAuthInGroup.equals(Role.GROUP_ASSOCIATE) && groupMember.getRole().equals(Role.GROUP_ADMIN))) {
            throw new PermissionException("You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.");
        }
        if (authId.equals(groupMemberPK.getUserId())) {
            if (roleAuthInGroup.equals(Role.GROUP_ADMIN)) {
                throw new PermissionException("You can not leave this group while you are <b>group admin</b>. Please propose someone to <b>group admin</b>");
            }
            groupMemberRepository.deleteById(groupMemberPK);
            return groupMemberPK;
        }
        groupMemberRepository.deleteById(groupMemberPK);
        return groupMemberPK;
    }

    @Override
    public GroupMember upsert(GroupMember groupMember) {
        permissionService.checkPermission(groupMember.getGroup().getId(), Group.class, List.of(Role.GROUP_ADMIN, Role.GROUP_ASSOCIATE));
        Group group = groupRepository.findById(groupMember.getGroup().getId()).orElseThrow(NotFoundException::new);
        UUID authId = applicationContextHolder.getCurrentUser().getId();
        Role authRoleInGroup = groupRepository.getRoleUserInGroup(group.getId(), authId);
        // User is not allowed to change role unless having GROUP_ADMIN or GROUP_ASSOCIATE role.
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

    @Override
    public List<GroupMember> getGroupMembersByGroupId(UUID groupId, List<Role> roles) {
        permissionService.checkPermission(groupId, Group.class);
        return groupMemberRepository.getGroupMembersByGroupId(groupId, roles);
    }

}