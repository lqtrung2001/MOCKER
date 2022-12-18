package com.mockez.service;

import com.mockez.domain.model.entity.Group;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface GroupService {

    List<Group> getGroupsWithAccess(UUID userId);

    Group getProject(UUID id);

    UUID delete(UUID id);

    UUID saveOrUpdate(Group group);
}
