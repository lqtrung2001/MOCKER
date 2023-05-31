package com.mocker.repository.customize;

import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.enumeration.Role;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface GroupRepositoryCustom {

    List<Group> findAllWithAccess(UUID userId, List<Role> roles);

    Group findOneWithEagerProjectsAndGroupMembers(UUID id);

    Role getRoleUserInGroup(UUID group, UUID user);

    Group getGroupByProjectId(UUID projectId);

    Group getGroupBySchemaId(UUID schemaId);

    Group getGroupByTableId(UUID tableId);
}
