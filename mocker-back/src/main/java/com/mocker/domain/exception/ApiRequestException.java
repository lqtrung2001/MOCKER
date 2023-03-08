package com.mocker.domain.exception;

public class ApiRequestException extends AbstractException {
    public ApiRequestException(String message, String... params) {
        super(message, params);
    }
}
