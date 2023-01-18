package com.mockez.controller;


import com.mockez.api.AuthApi;
import com.mockez.controller.maper.ApiAbstractMapper;
import com.mockez.domain.dto.ChangePasswordDto;
import com.mockez.domain.dto.UserDto;
import com.mockez.service.AuthService;
import com.mockez.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;


/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "")
public class AuthController implements AuthApi {
    private final ApiAbstractMapper apiAbstractMapper;
    private final AuthService authService;
    private final UserService userService;

    @Override
    public ResponseEntity<Boolean> sendVerificationCode(String username) {
        return ResponseEntity.ok(authService.sendVerificationCode(username));
    }

    @Override
    public ResponseEntity<UserDto> verifyAndSave(String verificationCode, UserDto userDto) {
        return ResponseEntity.ok(apiAbstractMapper.map(authService.verifyAndSave(verificationCode, apiAbstractMapper.map(userDto))));
    }

    @Override
    public ResponseEntity<Boolean> isExistedUsername(String username) {
        return ResponseEntity.ok(userService.isExistedUsername(username));
    }

    @Override
    public ResponseEntity<UserDto> changePassword(UUID id, ChangePasswordDto changePasswordDto) {
        return ResponseEntity.ok(apiAbstractMapper.map(userService.changePassword(id, changePasswordDto.getOldPassword(), changePasswordDto.getNewPassword())));
    }
}
