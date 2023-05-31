package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.exception.PermissionException;
import com.mocker.domain.model.entity.*;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.repository.GroupMemberRepository;
import com.mocker.repository.ProjectRepository;
import com.mocker.repository.SchemaRepository;
import com.mocker.repository.TableRepository;
import com.mocker.service.PermissionService;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.util.Strings;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.transaction.Transactional;
import java.util.List;
import java.util.UUID;

/**
 * @author Do Quoc Viet
 */

@Service
@Transactional
@RequiredArgsConstructor
public class PermissionServiceImpl implements PermissionService {
    private final ApplicationContextHolder applicationContextHolder;
    private final TableRepository tableRepository;
    private final SchemaRepository schemaRepository;
    private final ProjectRepository projectRepository;
    private final GroupMemberRepository groupMemberRepository;


    @Override
    public void checkPermission(UUID targetId, Class<? extends Base> clazz) {
        checkPermission(targetId, clazz, List.of(Role.GROUP_ADMIN, Role.GROUP_ASSOCIATE, Role.USER), Strings.EMPTY);
    }

    @Override
    public void checkPermission(UUID targetId, Class<? extends Base> clazz, List<Role> roles) {
        checkPermission(targetId, clazz, roles, Strings.EMPTY);
    }

    @Override
    public void checkPermission(UUID targetId, Class<? extends Base> clazz, List<Role> roles, String msg) {
        if (CollectionUtils.isEmpty(roles)) {
            throw new IllegalArgumentException("The roles must not be empty");
        }
        UUID groupId = null;
        if (clazz.equals(Table.class)) {
            groupId = tableRepository.findById(targetId)
                    .orElseThrow(() -> new NotFoundException(targetId))
                    .getSchema()
                    .getProject()
                    .getGroup()
                    .getId();
        }
        if (clazz.equals(Schema.class)) {
            groupId = schemaRepository.findById(targetId)
                    .orElseThrow(() -> new NotFoundException(targetId))
                    .getProject()
                    .getGroup()
                    .getId();
        }
        if (clazz.equals(Project.class)) {
            groupId = projectRepository.findById(targetId)
                    .orElseThrow(() -> new NotFoundException(targetId))
                    .getGroup()
                    .getId();
        }
        if (groupId == null) {
            groupId = targetId;
        }
        UUID authId = applicationContextHolder.getCurrentUser().getId();
        Role role = groupMemberRepository
                .findAllByGroupId(groupId)
                .stream()
                .filter(item -> authId.equals(item.getUser().getId()))
                .map(GroupMember::getRole)
                .findFirst()
                .orElseThrow(() -> new NotFoundException(authId));
        String defaultMsg = "You are not allowed to access this resource, please try again or contact the administrator!";
        if (!roles.contains(role)) {
            throw new PermissionException(Strings.isBlank(msg) ? defaultMsg : msg);
        }
    }
}
