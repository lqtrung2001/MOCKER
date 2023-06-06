package com.mocker.domain.exception;

public class AuthenticationException extends AbstractException {
    public AuthenticationException() {
        super("exception.authentication");
    }

    public AuthenticationException(String message, String... params) {
        super(message, params);
    }
}
