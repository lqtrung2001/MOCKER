package com.mockez.service;

import com.mockez.domain.model.entity.Project;

import java.util.List;
import java.util.UUID;

public interface ProjectService {

    Project getProject(UUID id);

    List<Project> getProjectsCurrentAccess();
}
