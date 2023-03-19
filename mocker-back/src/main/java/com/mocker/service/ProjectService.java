package com.mocker.service;

import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.Schema;

import java.util.Arrays;
import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface ProjectService {

    Project getProject(UUID id);

    List<Project> getProjects();

    Project upsert(Project project);

    Project delete(UUID id);

    List<Schema> getSchemasByProject(UUID projectId);
}
