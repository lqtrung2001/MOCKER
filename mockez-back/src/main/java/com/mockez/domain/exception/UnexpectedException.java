package com.mockez.domain.exception;

public class UnexpectedException extends RuntimeException {
    public UnexpectedException(String msg, Throwable throwable) {
        super(msg, throwable);
    }

    public UnexpectedException(String msg) {
        super(msg);
    }

}
