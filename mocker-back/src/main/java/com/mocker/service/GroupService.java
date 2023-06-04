package com.mocker.service;

import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.enumeration.Role;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface GroupService {

    List<Group> getGroups(List<Role> roles);

    Group getGroup(UUID id);

    Group delete(UUID id);

    Group upsert(Group group);

}
