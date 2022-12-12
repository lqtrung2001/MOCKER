package com.mockez.service;

import com.mockez.domain.model.entity.Project;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface ProjectService {

    Project getProject(UUID id);

    List<Project> getProjects();

    UUID saveOrUpdate(Project project);

}
