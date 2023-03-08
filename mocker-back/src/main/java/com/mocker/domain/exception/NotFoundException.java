package com.mocker.domain.exception;

public class NotFoundException extends AbstractException {
    public NotFoundException(String message, String... params) {
        super(message, params);
    }
}
