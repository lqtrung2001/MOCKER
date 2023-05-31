package com.mocker.service;

import com.mocker.domain.model.entity.Base;
import com.mocker.domain.model.entity.enumeration.Role;

import java.util.List;
import java.util.UUID;

/**
 * @author Do Quoc Viet
 */

public interface PermissionService {

    /**
     * @param targetId The target identifier
     * @param clazz    The class specifying the permissions
     */
    void checkPermission(UUID targetId, Class<? extends Base> clazz);

    /**
     * @param targetId The target identifier
     * @param clazz    The class specifying the permissions
     * @param roles    The roles must be specified
     */
    void checkPermission(UUID targetId, Class<? extends Base> clazz, List<Role> roles);

    /**
     * @param targetId The target identifier
     * @param clazz    The class specifying the permissions
     * @param roles    The roles must be specified
     * @param msg      The default message
     */
    void checkPermission(UUID targetId, Class<? extends Base> clazz, List<Role> roles, String msg);
}
