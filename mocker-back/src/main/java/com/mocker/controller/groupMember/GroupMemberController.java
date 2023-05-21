package com.mocker.controller.groupMember;

import com.mocker.api.GroupMemberApi;
import com.mocker.domain.dto.GroupMemberDto;
import com.mocker.domain.dto.GroupMemberPKDto;
import com.mocker.service.GroupMemberService;
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
public class GroupMemberController implements GroupMemberApi {
    private final ApiGroupMemberMapper apiGroupMemberMapper;
    private final GroupMemberService groupMemberService;

    @Override
    public ResponseEntity<GroupMemberPKDto> deleteGroupMember(GroupMemberPKDto groupMemberPKDto) {
        return ResponseEntity.ok(apiGroupMemberMapper.map(groupMemberService.delete(apiGroupMemberMapper.map(groupMemberPKDto))));
    }


    @Override
    public ResponseEntity<List<GroupMemberDto>> getGroupMembers(UUID groupId) {
        return ResponseEntity.ok(apiGroupMemberMapper.map(groupMemberService.getGroupMembersByGroup(groupId)));
    }


    @Override
    public ResponseEntity<GroupMemberDto> upsertGroupMember(GroupMemberDto groupMemberDto) {
        return ResponseEntity.ok(apiGroupMemberMapper.map(groupMemberService.upsert(apiGroupMemberMapper.map(groupMemberDto))));
    }

}
