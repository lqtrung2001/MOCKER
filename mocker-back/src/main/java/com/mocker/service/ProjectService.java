package com.mocker.service;

import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.Schema;
import com.mocker.domain.model.entity.enumeration.Role;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface ProjectService {

    Project getProject(UUID id);

    List<Project> getProjects(List<Role> roles);

    Project upsert(Project project);

    Project delete(UUID id);

    List<Project> getProjectsByGroupId(UUID groupId, List<Role> roles);
}
