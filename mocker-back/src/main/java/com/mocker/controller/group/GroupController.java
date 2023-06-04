package com.mocker.controller.group;

import com.mocker.api.GroupApi;
import com.mocker.controller.groupMember.ApiGroupMemberMapper;
import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.controller.project.ApiProjectMapper;
import com.mocker.domain.dto.GroupDto;
import com.mocker.domain.dto.GroupMemberDto;
import com.mocker.domain.dto.ProjectDto;
import com.mocker.domain.dto.RoleDto;
import com.mocker.domain.model.entity.enumeration.Role;
import com.mocker.service.GroupMemberService;
import com.mocker.service.GroupService;
import com.mocker.service.ProjectService;
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
    private final ApiAbstractMapper apiAbstractMapper;
    private final ProjectService projectService;
    private final ApiProjectMapper apiProjectMapper;
    private final GroupService groupService;
    private final ApiGroupMemberMapper apiGroupMemberMapper;
    private final GroupMemberService groupMemberService;

    @Override
    public ResponseEntity<List<GroupMemberDto>> getGroupMembersByGroupId(UUID id, List<RoleDto> rolesDto) {
        List<Role> roles = apiAbstractMapper.mapRolesDtoToRoles(rolesDto);
        return ResponseEntity.ok(apiGroupMemberMapper.map(groupMemberService.getGroupMembersByGroupId(id, roles)));
    }

    @Override
    public ResponseEntity<List<ProjectDto>> getProjectsByGroupId(UUID id, List<RoleDto> rolesDto) {
        List<Role> roles = apiAbstractMapper.mapRolesDtoToRoles(rolesDto);
        return ResponseEntity.ok(apiProjectMapper.map(projectService.getProjectsByGroupId(id, roles)));
    }

    @Override
    public ResponseEntity<GroupDto> deleteGroup(UUID id) {
        return ResponseEntity.ok(apiGroupMapper.map(groupService.delete(id)));
    }

    @Override
    public ResponseEntity<GroupDto> getGroup(UUID id) {
        return ResponseEntity.ok(apiGroupMapperDecorator.mapFetchProjectsAndGroupMembers(groupService.getGroup(id)));
    }

    @Override
    public ResponseEntity<List<GroupDto>> getGroups(List<RoleDto> rolesDto) {
        List<Role> roles = apiAbstractMapper.mapRolesDtoToRoles(rolesDto);
        return ResponseEntity.ok(apiGroupMapperDecorator
                .mapToGroupsDtoFetchGroupMembers(groupService
                        .getGroups(roles)));
    }

    @Override
    public ResponseEntity<GroupDto> upsertGroup(GroupDto groupDto) {
        return ResponseEntity.ok(apiGroupMapper.map(groupService.upsert(apiGroupMapper.map(groupDto))));
    }
}
