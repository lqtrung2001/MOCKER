package com.mockez.service;

import com.mockez.domain.model.entity.Project;

import java.util.List;
import java.util.UUID;

public interface ProjectService {
    /**
     * PROJECT.01 GET /project/{groupId}
     * @param groupId of group
     * @return project by groupId
     */
    List<Project> getProjectsByGroup(UUID groupId);
}
