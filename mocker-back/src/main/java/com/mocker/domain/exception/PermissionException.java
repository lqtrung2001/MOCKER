package com.mocker.domain.exception;

public class PermissionException extends AbstractException {
    public PermissionException(String message, String... params) {
        super(message, params);
    }
}
