package com.mocker.controller.groupMember;

import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.GroupMemberPKDto;
import com.mocker.service.GroupMemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/v1")
public class GroupMemberController implements com.mocker.api.GroupMemberApi {

    private final ApiAbstractMapper apiAbstractMapper;
    private final ApiGroupMemberMapper apiGroupMemberMapper;
    private final GroupMemberService groupMemberService;

    @Override
    public ResponseEntity<GroupMemberPKDto> deleteGroupMember(GroupMemberPKDto groupMemberPKDto) {
        return ResponseEntity.ok(apiGroupMemberMapper.map(groupMemberService.delete(apiGroupMemberMapper.map(groupMemberPKDto))));
    }

    @Override
    public ResponseEntity<GroupMemberPKDto> addGroupMember(GroupMemberPKDto groupMemberPKDto) {
        return ResponseEntity.ok(apiGroupMemberMapper.map(groupMemberService.add(apiGroupMemberMapper.map(groupMemberPKDto))));
    }
}
