package com.mockez.controller;

import com.mockez.api.UserApi;
import com.mockez.domain.dto.InlineObjectDto;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class UserController implements UserApi {

    @Override
    public ResponseEntity<Boolean> login(InlineObjectDto inlineObjectDto) {
        return ResponseEntity.ok(false);
    }
}
