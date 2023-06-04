package com.mocker.controller.permission;

import com.mocker.api.PermissionApi;
import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.RoleDto;
import com.mocker.service.PermissionService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

/**
 * @author Do Quoc viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/v1")
public class PermissionController implements PermissionApi {
    private final ApiAbstractMapper apiAbstractMapper;
    private final PermissionService permissionService;

    @Override
    public ResponseEntity<RoleDto> getPermission(String entity, UUID id) {
        return ResponseEntity.ok(apiAbstractMapper.map(permissionService.getPermission(entity, id)));
    }
}
