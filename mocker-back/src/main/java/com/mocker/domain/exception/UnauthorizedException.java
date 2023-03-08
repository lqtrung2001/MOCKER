package com.mocker.domain.exception;

public class UnauthorizedException extends AbstractException {
    public UnauthorizedException(String message, String... params) {
        super(message, params);
    }
}
