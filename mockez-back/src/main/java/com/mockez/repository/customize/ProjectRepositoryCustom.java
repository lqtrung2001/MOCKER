package com.mockez.repository.customize;

import com.mockez.domain.model.entity.Project;

import java.util.List;
import java.util.UUID;

public interface ProjectRepositoryCustom {

    List<Project> getProjectsByGroup(UUID groupId);

}
