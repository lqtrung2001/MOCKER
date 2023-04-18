package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.Schema;
import com.mocker.repository.ProjectRepository;
import com.mocker.repository.SchemaRepository;
import com.mocker.repository.UserRepository;
import com.mocker.service.ProjectService;
import com.mocker.service.SchemaService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
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

    @Override
    public Project getProject(UUID id) {
        return projectRepository.findById(id).orElseThrow(() -> new NotFoundException(id));
    }

    @Override
    public List<Project> getProjects() {
        UUID authId = applicationContextHolder.getCurrentUser().getId();
        return projectRepository.findAll(userRepository.findAllGroupIds(authId));
    }

    @Override
    public Project upsert(Project project) {
        return Optional.of(projectRepository.save(project))
                .orElseThrow(() -> new NotFoundException(project.getId()));
    }

    @Override
    public Project delete(UUID id) {
        Project project = projectRepository.findById(id).orElseThrow(() -> new NotFoundException(id));
        // Delete schema
        schemaService.getSchemasByProject(id).stream().map(Schema::getId).forEach(schemaService::delete);
        projectRepository.deleteById(id);
        return project;
    }

    @Override
    public List<Schema> getSchemasByProject(UUID projectId) {
        return Optional.ofNullable(schemaRepository.getSchemasByProject(projectId))
                .orElseThrow(() -> new NotFoundException(projectId));
    }
}
