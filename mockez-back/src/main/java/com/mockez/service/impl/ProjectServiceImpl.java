package com.mockez.service.impl;

import com.mockez.domain.model.entity.Project;
import com.mockez.repository.GroupRepository;
import com.mockez.repository.ProjectRepository;
import com.mockez.service.ProjectService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
@AllArgsConstructor
public class ProjectServiceImpl implements ProjectService {

    private final ProjectRepository projectRepository;
    private final GroupRepository groupRepository;
    @Override
    public List<Project> getProjectsByGroup(UUID groupId) {
        return groupRepository.findById(groupId).orElseThrow().getProjects();
    }
}
