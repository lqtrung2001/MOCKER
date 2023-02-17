package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.composite_key.GroupMemberPK;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.repository.GroupMemberRepository;
import com.mocker.repository.GroupRepository;
import com.mocker.repository.ProjectRepository;
import com.mocker.repository.SchemaRepository;
import com.mocker.service.GroupService;
import com.mocker.service.ProjectService;
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

    private final GroupRepository groupRepository;
    private final GroupMemberRepository groupMemberRepository;
    private final ApplicationContextHolder applicationContextHolder;
    private final ProjectRepository projectRepository;
    private final SchemaRepository schemaRepository;
    private final ProjectService projectService;

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
        projects.stream().map(Project::getId).forEach(projectService::delete);
        groupRepository.delete(group);
        return id;
    }

    @Override
    public UUID saveOrUpdate(Group group) {
        // After saving group, update the group member for saved group and auth user
        boolean isNew = group.getId() == null;
        groupRepository.save(group);
        if (isNew) {
            GroupMember build = GroupMember.builder()
                    .id(GroupMemberPK.builder()
                            .groupId(group.getId())
                            .userId(applicationContextHolder.getCurrentUser().getId())
                            .build())
                    .role(Role.GROUP_ADMIN).build();
            groupMemberRepository.save(build);
        }
        return group.getId();
    }
}
