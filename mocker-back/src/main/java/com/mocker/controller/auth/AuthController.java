package com.mocker.controller.auth;


import com.mocker.api.AuthApi;
import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.ChangePasswordDto;
import com.mocker.domain.dto.UserDto;
import com.mocker.domain.exception.InternalException;
import com.mocker.service.AuthService;
import com.mocker.service.UserService;
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
    public ResponseEntity<Boolean> sendVerificationCode(String username) throws InternalException {
        return ResponseEntity.ok(authService.sendVerificationCode(username));
    }

    @Override
    public ResponseEntity<UserDto> verifyAndSave(String verificationCode, UserDto userDto) throws InternalException {
        return ResponseEntity.ok(apiAbstractMapper.map(authService.verifyAndSave(verificationCode, apiAbstractMapper.map(userDto))));
    }

    @Override
    public ResponseEntity<Boolean> isExistedUsername(String username) {
        return ResponseEntity.ok(userService.isExistedUsername(username));
    }

    @Override
    public ResponseEntity<UserDto> changePassword(UUID id, ChangePasswordDto changePasswordDto) throws InternalException {
        return ResponseEntity.ok(apiAbstractMapper.map(userService.changePassword(id, changePasswordDto.getOldPassword(), changePasswordDto.getNewPassword())));
    }
}
