package com.mocker.domain.exception;

public class AuthenticationException extends AbstractException {
    public AuthenticationException(String message, String... params) {
        super(message, params);
    }
}
