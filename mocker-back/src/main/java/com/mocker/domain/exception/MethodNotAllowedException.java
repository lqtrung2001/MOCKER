package com.mocker.domain.exception;

public class MethodNotAllowedException extends AbstractException {
    public MethodNotAllowedException(String message, String... params) {
        super(message, params);
    }
}
