package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.exception.BadRequestException;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.repository.GroupMemberRepository;
import com.mocker.repository.ProjectRepository;
import com.mocker.repository.SchemaRepository;
import com.mocker.repository.UserRepository;
import com.mocker.service.PermissionService;
import com.mocker.service.ProjectService;
import com.mocker.service.SchemaService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

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
    private final GroupMemberRepository groupMemberRepository;
    private final PermissionService permissionService;

    @Override
    public Project getProject(UUID id) {
        permissionService.checkPermission(id, Project.class);
        Project project = projectRepository.findById(id).orElseThrow(() -> new NotFoundException(id));
        project.setSchemas(schemaRepository.getSchemasByProject(project.getId()));
        return project;
    }

    @Override
    public List<Project> getProjects(List<Role> roles) {
        UUID authId = applicationContextHolder.getCurrentUser().getId();
        Set<UUID> groupIds = userRepository.findAllGroupIds(authId);
        groupIds = groupIds.stream().filter(groupId -> {
            List<GroupMember> groupMembers = groupMemberRepository.findAllByGroupId(groupId);
            return groupMembers.stream()
                    .anyMatch(groupMember -> authId.equals(groupMember.getUser().getId())
                            && (CollectionUtils.isEmpty(roles) || roles.contains(groupMember.getRole())));
        }).collect(Collectors.toSet());
        return projectRepository.findAllByGroupIds(groupIds);
    }

    @Override
    public Project upsert(Project project) {
        permissionService.checkPermission(
                project.getGroup().getId(),
                Group.class,
                List.of(Role.GROUP_ADMIN, Role.GROUP_ASSOCIATE),
                "You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.");
        Project existingProjectName = projectRepository.findOneByNameAndGroupId(project.getName(), project.getGroup().getId());
        if (Objects.nonNull(existingProjectName)) {
            if (Objects.isNull(project.getId())) {
                // Create a new project
                throw new BadRequestException("The project with name " + project.getName() + " is already existed, please create with the different project name");
            } else if (!Objects.equals(existingProjectName.getId(), project.getId())) {
                throw new BadRequestException("The project with name " + project.getName() + "is already existed, please update it with the different project name");
            }
        }
        return projectRepository.save(project);
    }

    @Override
    public Project delete(UUID id) {
        permissionService.checkPermission(
                id,
                Project.class,
                List.of(Role.GROUP_ADMIN, Role.GROUP_ASSOCIATE),
                "You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.");
        Project project = projectRepository.findById(id).orElseThrow(() -> new NotFoundException(id));
        schemaService.getSchemasByProject(id).stream().map(Schema::getId).forEach(schemaService::delete);
        projectRepository.deleteById(id);
        return project;
    }

    @Override
    public List<Schema> getSchemasByProject(UUID projectId) {
        permissionService.checkPermission(projectId, Project.class);
        return schemaRepository.getSchemasByProject(projectId);
    }

}
