package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.exception.PermissionException;
import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.User;
import com.mocker.domain.model.entity.composite_key.GroupMemberPK;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.repository.GroupMemberRepository;
import com.mocker.repository.GroupRepository;
import com.mocker.repository.ProjectRepository;
import com.mocker.service.GroupService;
import com.mocker.service.ProjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Service
@Transactional
@RequiredArgsConstructor
public class GroupServiceImpl implements GroupService {

    private final GroupRepository groupRepository;
    private final GroupMemberRepository groupMemberRepository;
    private final ApplicationContextHolder applicationContextHolder;
    private final ProjectRepository projectRepository;
    private final ProjectService projectService;

    @Override
    public List<Group> getGroupsWithAccess(UUID userId) {
        List<Group> groups = groupRepository.findAllWithAccess(userId);
        return groups.stream()
                .map(group -> group.toBuilder()
                        .groupMembers(groupMemberRepository
                                .findAllByGroup(group))
                        .build())
                .collect(Collectors.toList());
    }

    @Override
    public Group getGroup(UUID id) {
        Group group = groupRepository.findById(id).orElseThrow(() -> new NotFoundException(id));
        List<GroupMember> groupMembers = groupMemberRepository.findAllByGroup(group);
        User user = applicationContextHolder.getCurrentUser();
        boolean contains = groupMembers.stream().map(GroupMember::getUser).map(User::getId).toList().contains(user.getId());
        if (!contains) {
            throw new PermissionException("You can be allowed to access this group");
        }
        group.setGroupMembers(groupMembers);
        group.setProjects(projectRepository.findAllByGroup(group));
        return group;
    }

    @Override
    public Group delete(UUID id) {
        UUID authId = applicationContextHolder.getCurrentUser().getId();
        if (!groupRepository.getRoleUserInGroup(id, authId).equals(Role.GROUP_ADMIN)) {
            throw new PermissionException("User " + authId + " is not allowed to delete");
        }
        Group group = groupRepository.findById(id).orElseThrow(() -> new NotFoundException(id));
        List<GroupMember> groupMembers = groupMemberRepository.findAllByGroup(group);
        List<Project> projects = projectRepository.findAllByGroup(group);
        groupMemberRepository.deleteAll(groupMembers);
        projects.stream().map(Project::getId).forEach(projectService::delete);
        groupRepository.delete(group);
        return group;
    }

    @Override
    public Group upsert(Group group) {
        UUID authId = applicationContextHolder.getCurrentUser().getId();
        // After saving group, update the group member for saved group and auth user
        if (group.getId() == null) {
            groupRepository.save(group);
            GroupMember build = GroupMember.builder()
                    .id(GroupMemberPK.builder()
                            .groupId(group.getId())
                            .userId(authId)
                            .build())
                    .role(Role.GROUP_ADMIN).build();
            groupMemberRepository.save(build);
        } else {
            Role roleUserInGroup = groupRepository.getRoleUserInGroup(group.getId(), authId);
            if (!roleUserInGroup.equals(Role.GROUP_ADMIN) && !roleUserInGroup.equals(Role.GROUP_ASSOCIATE)) {
                throw new PermissionException("You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.");
            }
            groupRepository.save(group);
        }
        return group;
    }

    @Override
    public Group getGroupByProjectId(UUID projectId) {
        return null;
    }

}
