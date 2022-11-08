package com.mockez.service.impl;

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

    @Override
    public List<Project> getProjectsByGroup(UUID groupId) {
        return projectRepository.getProjectsByGroup(groupId);
    }
}
