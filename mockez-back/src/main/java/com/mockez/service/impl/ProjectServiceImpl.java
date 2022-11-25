package com.mockez.service.impl;

import com.mockez.configuration.security.ApplicationContextHolder;
import com.mockez.domain.model.entity.Project;
import com.mockez.repository.ProjectRepository;
import com.mockez.service.ProjectService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class ProjectServiceImpl implements ProjectService {

    private final ProjectRepository projectRepository;
    private final ApplicationContextHolder applicationContextHolder;

    @Override
    public Project getProject(UUID id) {
        return projectRepository.findById(id).orElseThrow();
    }

    @Override
    public List<Project> getProjectsCurrentAccess() {
        return projectRepository.findAllByGroup(applicationContextHolder.getCurrentUser().getGroup().getId());
    }
}
