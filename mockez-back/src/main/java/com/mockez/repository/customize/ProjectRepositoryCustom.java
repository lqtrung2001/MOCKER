package com.mockez.repository.customize;

import com.mockez.domain.model.entity.Project;

import java.util.List;
import java.util.Set;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface ProjectRepositoryCustom {

    List<Project> findAll(Set<UUID> groupIds);

}
