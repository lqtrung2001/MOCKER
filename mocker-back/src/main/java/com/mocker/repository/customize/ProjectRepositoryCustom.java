package com.mocker.repository.customize;

import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.enumeration.Role;

import java.util.List;
import java.util.Set;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface ProjectRepositoryCustom {
    Project getProject(UUID id);
    List<Project> getProjects(UUID authId, List<Role> roles);

    List<Project> getProjectsByGroupId(UUID authId, UUID groupId, List<Role> roles);

}
