package com.mocker.domain.exception;

public class ServiceUnavailableException extends AbstractException {
    public ServiceUnavailableException(String message, String... params) {
        super(message, params);
    }
}
