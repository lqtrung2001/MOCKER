package com.mocker.domain.exception;

public class BadRequestException extends AbstractException {
    public BadRequestException() {
        super("exception.bad_request");
    }

    public BadRequestException(String message, String... params) {
        super(message, params);
    }
}
