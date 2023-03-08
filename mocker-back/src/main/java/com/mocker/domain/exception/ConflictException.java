package com.mocker.domain.exception;

public class ConflictException extends AbstractException {
    public ConflictException(String message, String... params) {
        super(message, params);
    }
}
