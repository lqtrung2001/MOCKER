package com.mockez.controller;


import com.mockez.api.AuthApi;
import com.mockez.controller.maper.ApiAbstractMapper;
import com.mockez.domain.dto.UserDto;
import com.mockez.service.AuthService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "")
public class EmailController implements AuthApi {
    private final ApiAbstractMapper apiAbstractMapper;
    private final AuthService authService;

    @Override
    public ResponseEntity<UserDto> signup(Integer otpCode, UserDto userDto) {
        return ResponseEntity.ok(apiAbstractMapper.map(authService.validateAndSave(otpCode, apiAbstractMapper.map(userDto))));
    }

    @Override
    public ResponseEntity<Boolean> sendOTP(String username) {
        return ResponseEntity.ok(authService.sendOTPCode(username));
    }

}
