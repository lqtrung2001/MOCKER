package com.mocker.domain.exception;

import com.mocker.domain.dto.ErrorDto.CodeEnum;
import com.mocker.utility.MessageContextHelper;
import lombok.Getter;
import lombok.Setter;

import java.util.Optional;

@Getter
@Setter
public abstract class AbstractException extends RuntimeException {
    private String message;
    private CodeEnum codeEnum;

    public AbstractException(String message, String... params) {
        setMessage(String.format(Optional.ofNullable(MessageContextHelper.getMessage(message)).orElse(message), (Object[]) params));
    }

    public AbstractException(String message, CodeEnum codeEnum, String... params) {
        setMessage(String.format(Optional.ofNullable(MessageContextHelper.getMessage(message)).orElse(message), (Object[]) params));
        setCodeEnum(codeEnum);
    }

}
