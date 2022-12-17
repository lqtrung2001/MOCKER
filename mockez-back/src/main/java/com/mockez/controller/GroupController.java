package com.mockez.controller;

import com.mockez.api.GroupApi;
import com.mockez.configuration.security.ApplicationContextHolder;
import com.mockez.controller.maper.ApiAbstractMapper;
import com.mockez.domain.dto.GroupDto;
import com.mockez.domain.model.entity.User;
import com.mockez.service.GroupService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/v1")
public class GroupController implements GroupApi {

    private final ApiAbstractMapper apiAbstractMapper;
    private final GroupService groupService;
    private final ApplicationContextHolder applicationContextHolder;

    @Override
    public ResponseEntity<List<GroupDto>> getGroupsWithAccess() {
        UUID authId = applicationContextHolder.getCurrentUser().getId();
        return ResponseEntity.ok(groupService.getGroupsWithAccess(authId)
                .stream().map(apiAbstractMapper::map)
                .collect(Collectors.toList()));
    }
}