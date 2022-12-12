package com.mockez.controller;

import com.mockez.api.UserApi;
import com.mockez.controller.maper.ApiAbstractMapper;
import com.mockez.domain.dto.UserDto;
import com.mockez.service.UserService;
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
public class UserController implements UserApi {

    private final ApiAbstractMapper apiAbstractMapper;
    private final UserService userService;

    @Override
    public ResponseEntity<UserDto> findOneByUsername(String username) {
        return ResponseEntity.ok(apiAbstractMapper.map(userService.getUserByUsername(username)));
    }
}
