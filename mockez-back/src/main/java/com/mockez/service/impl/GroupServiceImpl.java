package com.mockez.service.impl;

import com.mockez.configuration.security.ApplicationContextHolder;
import com.mockez.domain.model.entity.Group;
import com.mockez.domain.model.entity.GroupMember;
import com.mockez.domain.model.entity.Project;
import com.mockez.domain.model.entity.composite_key.GroupMemberPK;
import com.mockez.domain.model.entity.enumeration.Role;
import com.mockez.repository.GroupMemberRepository;
import com.mockez.repository.GroupRepository;
import com.mockez.repository.ProjectRepository;
import com.mockez.repository.UserRepository;
import com.mockez.service.GroupService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Service
@Transactional
@RequiredArgsConstructor
public class GroupServiceImpl implements GroupService {

    private final UserRepository userRepository;
    private final GroupRepository groupRepository;
    private final GroupMemberRepository groupMemberRepository;
    private final ApplicationContextHolder applicationContextHolder;
    private final ProjectRepository projectRepository;

    @Override
    public List<Group> getGroupsWithAccess(UUID userId) {
        return groupRepository.findAllWithAccess(userId);
    }

    @Override
    public Group getGroup(UUID id) {
        Group group = groupRepository.findById(id).orElseThrow();
        group.setGroupMembers(groupMemberRepository.findAllByGroup(group));
        group.setProjects(projectRepository.findAllByGroup(group));
        return group;
    }

    @Override
    public UUID delete(UUID id) {
        Group group = groupRepository.findById(id).orElseThrow();
        List<GroupMember> groupMembers = groupMemberRepository.findAllByGroup(group);
        List<Project> projects = projectRepository.findAllByGroup(group);
        groupMemberRepository.deleteAll(groupMembers);
        projectRepository.deleteAll(projects);
        groupRepository.delete(group);
        return id;
    }

    @Override
    public UUID saveOrUpdate(Group group) {
        // After saving group, update the group member for saved group and auth user
        Group save = groupRepository.save(group);
        if (group.getId() == null) {
            GroupMember build = GroupMember.builder()
                    .id(GroupMemberPK.builder()
                            .groupId(save.getId())
                            .userId(applicationContextHolder.getCurrentUser().getId())
                            .build())
                    .role(Role.GROUP_ADMIN).build();
            groupMemberRepository.save(build);
        }
        return save.getId();
    }
}
