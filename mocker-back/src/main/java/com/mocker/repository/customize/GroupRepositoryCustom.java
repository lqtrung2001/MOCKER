package com.mocker.repository.customize;

import com.mocker.domain.model.entity.Group;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface GroupRepositoryCustom {

    List<Group> findAllWithAccess(UUID userId);

    Group findOneWithEagerProjectsAndGroupMembers(UUID id);

    String getRoleUserInGroup(UUID group, UUID user);
}
