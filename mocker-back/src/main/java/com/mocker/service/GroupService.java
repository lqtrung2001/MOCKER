package com.mocker.service;

import com.mocker.domain.model.entity.Group;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface GroupService {

    List<Group> getGroupsWithAccess(UUID userId);

    Group getGroup(UUID id);

    Group delete(UUID id);

    Group upsert(Group group);

    Group getGroupByProjectId(UUID projectId);
}
