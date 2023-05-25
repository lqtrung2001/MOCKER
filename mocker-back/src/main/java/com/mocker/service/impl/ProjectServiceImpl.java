package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.exception.PermissionException;
import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.User;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.repository.GroupMemberRepository;
import com.mocker.repository.GroupRepository;
import com.mocker.repository.ProjectRepository;
import com.mocker.repository.SchemaRepository;
import com.mocker.repository.UserRepository;
import com.mocker.service.ProjectService;
import com.mocker.service.SchemaService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class ProjectServiceImpl implements ProjectService {

    private final ProjectRepository projectRepository;
    private final UserRepository userRepository;
    private final SchemaRepository schemaRepository;
    private final ApplicationContextHolder applicationContextHolder;
    private final SchemaService schemaService;
    private final GroupRepository groupRepository;
    private final GroupMemberRepository groupMemberRepository;

    @Override
    public Project getProject(UUID id) {
        checkCurrentUserInProject(id, null);
        Project project = projectRepository.findById(id).orElseThrow(() -> new NotFoundException(id));
        project.setSchemas(schemaRepository.getSchemasByProject(project.getId()));
        return project;
    }

    @Override
    public List<Project> getProjects() {
        UUID authId = applicationContextHolder.getCurrentUser().getId();
        Set<UUID> groupIds = userRepository.findAllGroupIds(authId);
        groupIds.forEach(groupId -> {
            Group group = groupRepository.findById(groupId).orElseThrow(() -> new NotFoundException(groupId));
            List<GroupMember> groupMembers = groupMemberRepository.findAllByGroup(group);
            boolean contains = groupMembers.stream().map(GroupMember::getUser)
                    .map(User::getId)
                    .toList()
                    .contains(applicationContextHolder.getCurrentUser().getId());
            if (!contains) {
                groupIds.remove(groupId);
            }
        });
        return projectRepository.findAll(groupIds);
    }

    @Override
    public Project upsert(Project project) {
        checkCurrentUserInProject(project.getId(), project.getGroup().getId());
        checkRoleInProject(project.getId(), project.getGroup().getId());
        return Optional.of(projectRepository.save(project))
                .orElseThrow(() -> new NotFoundException(project.getId()));
    }

    @Override
    public Project delete(UUID id) {
        checkCurrentUserInProject(id, null);
        checkRoleInProject(id, null);
        Project project = projectRepository.findById(id).orElseThrow(() -> new NotFoundException(id));
        // Delete schema
        schemaService.getSchemasByProject(id).stream().map(Schema::getId).forEach(schemaService::delete);
        projectRepository.deleteById(id);
        return project;
    }

    @Override
    public List<Schema> getSchemasByProject(UUID projectId) {
        checkCurrentUserInProject(projectId, null);
        return Optional.ofNullable(schemaRepository.getSchemasByProject(projectId))
                .orElseThrow(() -> new NotFoundException(projectId));
    }

    private void checkCurrentUserInProject(UUID projectId, UUID groupId) {
        UUID auth = applicationContextHolder.getCurrentUser().getId();
        if (projectId != null) {
            Group group = groupRepository.getGroupByProjectId(projectId);
            List<GroupMember> groupMembers = groupMemberRepository.findAllByGroup(group);
            boolean contains = groupMembers.stream().map(GroupMember::getUser)
                    .map(User::getId)
                    .toList()
                    .contains(auth);
            if (!contains) {
                throw new PermissionException("You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.");
            }
        } else {
            Role roleUserInGroup = groupRepository.getRoleUserInGroup(groupId, auth);
            if (roleUserInGroup.equals(Role.USER)) {
                throw new PermissionException("You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.");
            }
        }
    }

    private void checkRoleInProject(UUID projectId, UUID groupId) {
        UUID auth = applicationContextHolder.getCurrentUser().getId();
        Role roleUserInGroup = (projectId != null)
                ? groupRepository.getRoleUserInGroup(groupRepository.getGroupByProjectId(projectId).getId(), auth)
                : groupRepository.getRoleUserInGroup(groupId, auth);
        if (roleUserInGroup.equals(Role.USER)) {
            throw new PermissionException("You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.");
        }
    }
}
