package com.mocker.domain.exception;

public class BadRequestException extends AbstractException {
    public BadRequestException(String message, String... params) {
        super(message, params);
    }
}
