package com.mocker.service;

import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.model.entity.Group;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface GroupService {

    List<Group> getGroupsWithAccess(UUID userId);

    Group getGroup(UUID id) throws NotFoundException;

    UUID delete(UUID id);

    UUID saveOrUpdate(Group group);
}
