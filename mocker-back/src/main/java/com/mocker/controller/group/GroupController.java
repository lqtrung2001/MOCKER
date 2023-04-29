package com.mocker.controller.group;

import com.mocker.api.GroupApi;
import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.domain.dto.GroupDto;
import com.mocker.service.GroupService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/v1")
public class GroupController implements GroupApi {
    private final ApiGroupMapper apiGroupMapper;
    private final ApiGroupMapperDecorator apiGroupMapperDecorator;
    private final GroupService groupService;
    private final ApplicationContextHolder applicationContextHolder;

    @Override
    public ResponseEntity<GroupDto> deleteGroup(UUID id) {
        return ResponseEntity.ok(apiGroupMapper.map(groupService.delete(id)));
    }

    @Override
    public ResponseEntity<GroupDto> getGroup(UUID id) {
        return ResponseEntity.ok(apiGroupMapperDecorator.mapFetchProjectsAndGroupMembers(groupService.getGroup(id)));
    }

    @Override
    public ResponseEntity<List<GroupDto>> getGroups() {
        UUID authId = applicationContextHolder.getCurrentUser().getId();
        return ResponseEntity.ok(apiGroupMapper.mapToGroupsDto(groupService.getGroupsWithAccess(authId)));
    }

    @Override
    public ResponseEntity<GroupDto> upsertGroup(GroupDto groupDto) {
        return ResponseEntity.ok(apiGroupMapper.map(groupService.upsert(apiGroupMapper.map(groupDto))));
    }
}
