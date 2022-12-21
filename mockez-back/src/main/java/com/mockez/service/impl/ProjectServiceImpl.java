package com.mockez.service.impl;

import com.mockez.configuration.security.ApplicationContextHolder;
import com.mockez.domain.model.entity.Project;
import com.mockez.repository.ProjectRepository;
import com.mockez.repository.UserRepository;
import com.mockez.service.ProjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class ProjectServiceImpl implements ProjectService {

    private final ProjectRepository projectRepository;
    private final UserRepository userRepository;
    private final ApplicationContextHolder applicationContextHolder;

    @Override
    public Project getProject(UUID id) {
        return projectRepository.findById(id).orElseThrow();
    }

    @Override
    public List<Project> getProjects() {
        UUID authId = applicationContextHolder.getCurrentUser().getId();
        return projectRepository.findAll(userRepository.findAllGroupIds(authId));
    }

    @Override
    public UUID saveOrUpdate(Project project) {
        return projectRepository.save(project).getId();
    }

    @Override
    public UUID delete(UUID id) {
        projectRepository.deleteById(id);
        return id;
    }
}
