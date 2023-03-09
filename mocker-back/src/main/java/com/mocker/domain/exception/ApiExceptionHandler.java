package com.mocker.domain.exception;

import com.mocker.domain.dto.ErrorDto;
import com.mocker.utility.MessageContextHelper;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import java.time.ZoneId;
import java.time.ZonedDateTime;

@ControllerAdvice
public class ApiExceptionHandler {

    @ExceptionHandler(value = {ApiRequestException.class})
    public ResponseEntity<ErrorDto> handlerApiRequestException(ApiRequestException e) {
        return getError(HttpStatus.UNPROCESSABLE_ENTITY, e.getMessage(), e.getStackTrace()[0].toString());
    }

    @ExceptionHandler(value = {AuthenticationException.class})
    public ResponseEntity<ErrorDto> handleAuthenticationException(AuthenticationException e) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.UNAUTHORIZED.value());
        errorDto.setError(HttpStatus.UNAUTHORIZED.name());
        errorDto.setMessage(getMessage(AuthenticationException.class));
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.AUTHENTICATION_EXCEPTION);
        errorDto.setAdditionalMessage(e.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.UNAUTHORIZED);
    }

    @ExceptionHandler(value = {BadRequestException.class})
    public ResponseEntity<ErrorDto> handleBadRequestException(BadRequestException e) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.BAD_REQUEST.value());
        errorDto.setError(HttpStatus.BAD_REQUEST.name());
        errorDto.setMessage(getMessage(BadRequestException.class));
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.BAD_REQUEST);
        errorDto.setAdditionalMessage(e.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(value = {ConflictException.class})
    public ResponseEntity<ErrorDto> handleConflictException(ConflictException e) {
        return getError(HttpStatus.CONFLICT, e.getMessage(), e.getStackTrace()[0].toString());
    }


    @ExceptionHandler(value = {InternalException.class})
    public ResponseEntity<ErrorDto> handleInternalException(InternalException e) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
        errorDto.setError(HttpStatus.INTERNAL_SERVER_ERROR.name());
        errorDto.setMessage(getMessage(InternalException.class));
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.BAD_REQUEST);
        errorDto.setAdditionalMessage(e.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @ExceptionHandler(value = {MethodNotAllowedException.class})
    public ResponseEntity<ErrorDto> handleMethodNotAllowedException(MethodNotAllowedException e) {
        return getError(HttpStatus.METHOD_NOT_ALLOWED, e.getMessage(), e.getStackTrace()[0].toString());
    }

    @ExceptionHandler(value = {NotFoundException.class})
    public ResponseEntity<ErrorDto> handleNotFoundException(NotFoundException e) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.NOT_FOUND.value());
        errorDto.setError(HttpStatus.NOT_FOUND.name());
        errorDto.setMessage(getMessage(NotFoundException.class));
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.NOT_FOUND);
        errorDto.setAdditionalMessage(e.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.NOT_FOUND);
    }

    @ExceptionHandler(value = {PermissionException.class})
    public ResponseEntity<ErrorDto> handlePermissionException(PermissionException e) {
        return getError(HttpStatus.FORBIDDEN, e.getMessage(), e.getStackTrace()[0].toString());
    }

    @ExceptionHandler(value = {ServiceUnavailableException.class})
    public ResponseEntity<ErrorDto> handleServiceUnavailableException(ServiceUnavailableException e) {
        return getError(HttpStatus.SERVICE_UNAVAILABLE, e.getMessage(), e.getStackTrace()[0].toString());
    }

    private String getMessage(Class<? extends AbstractException> clazz) {
        StringBuilder message = new StringBuilder("exception.");
        switch (clazz.getSimpleName()) {
            case "BadRequestException" -> message.append("bad_request");
            case "AuthenticationException" -> message.append("authentication");
            case "InternalException" -> message.append("internal");
            case "NotFoundException" -> message.append("not_found");
            case "UnauthorizedException" -> message.append("unauthorized");
            default -> message.append("business_application_error");
        }
        return MessageContextHelper.getMessage(message.toString());
    }

    private ResponseEntity<ErrorDto> getError(HttpStatus httpStatus, String additionalMessage, String path) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(httpStatus.value());
        errorDto.setError(httpStatus.name());
        errorDto.setMessage("exception.business_application_error");
        errorDto.setPath(path);
        errorDto.setCode(ErrorDto.CodeEnum.BAD_REQUEST);
        errorDto.setAdditionalMessage(additionalMessage);
        return new ResponseEntity<>(errorDto, httpStatus);
    }
}
