package com.mocker.domain.exception;

import java.util.UUID;

public class PermissionException extends UnauthorizedException {

    public PermissionException(UUID userId) {
        super("exception.permission.default_message", userId.toString());
    }

    public PermissionException(String message, String... params) {
        super(message, params);
    }
}
