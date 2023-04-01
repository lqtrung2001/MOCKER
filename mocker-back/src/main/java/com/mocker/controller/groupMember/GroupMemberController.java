package com.mocker.controller.groupMember;

import com.mocker.api.GroupMemberApi;
import com.mocker.domain.dto.GroupMemberDto;
import com.mocker.service.GroupMemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
    public ResponseEntity<GroupMemberDto> deleteGroupMember(GroupMemberDto groupMemberDto) {
        return ResponseEntity.ok(apiGroupMemberMapper.map(groupMemberService.delete(apiGroupMemberMapper.map(groupMemberDto))));
    }

    @Override
    public ResponseEntity<GroupMemberDto> upsertGroupMember(GroupMemberDto groupMemberDto) {
        return ResponseEntity.ok(apiGroupMemberMapper.map(groupMemberService.upsert(apiGroupMemberMapper.map(groupMemberDto))));
    }

}
