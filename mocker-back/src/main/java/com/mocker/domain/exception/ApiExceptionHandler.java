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
    // TODO: Luong Quoc Trung consider to using validation abstract class instead
    @ExceptionHandler(value = {ApiRequestException.class})
    public ResponseEntity<ErrorDto> handlerApiRequestException(ApiRequestException e) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.UNPROCESSABLE_ENTITY.value());
        errorDto.setError(HttpStatus.UNPROCESSABLE_ENTITY.name());
        errorDto.setMessage(getMessage(ApiRequestException.class));
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.BAD_REQUEST);
        errorDto.setAdditionalMessage(e.getMessage());
        return ResponseEntity.ok(errorDto);
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
        return ResponseEntity.ok(errorDto);
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
        return ResponseEntity.ok(errorDto);
    }

    @ExceptionHandler(value = {ConflictException.class})
    public ResponseEntity<ErrorDto> handleConflictException(ConflictException e) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.CONFLICT.value());
        errorDto.setError(HttpStatus.CONFLICT.name());
        errorDto.setMessage(getMessage(ConflictException.class));
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.CONFLICT);
        errorDto.setAdditionalMessage(e.getMessage());
        return ResponseEntity.ok(errorDto);
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
        return ResponseEntity.ok(errorDto);
    }

    @ExceptionHandler(value = {MethodNotAllowedException.class})
    public ResponseEntity<ErrorDto> handleMethodNotAllowedException(MethodNotAllowedException e) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.METHOD_NOT_ALLOWED.value());
        errorDto.setError(HttpStatus.METHOD_NOT_ALLOWED.name());
        errorDto.setMessage(getMessage(MethodNotAllowedException.class));
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.BAD_REQUEST);
        errorDto.setAdditionalMessage(e.getMessage());
        return ResponseEntity.ok(errorDto);
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
        return ResponseEntity.ok(errorDto);
    }

    @ExceptionHandler(value = {PermissionException.class})
    public ResponseEntity<ErrorDto> handlePermissionException(PermissionException e) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.FORBIDDEN.value());
        errorDto.setError(HttpStatus.FORBIDDEN.name());
        errorDto.setMessage(getMessage(PermissionException.class));
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.PERMISSION_EXCEPTION);
        errorDto.setAdditionalMessage(e.getMessage());
        return ResponseEntity.ok(errorDto);
    }

    @ExceptionHandler(value = {ServiceUnavailableException.class})
    public ResponseEntity<ErrorDto> handleServiceUnavailableException(ServiceUnavailableException e) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.SERVICE_UNAVAILABLE.value());
        errorDto.setError(HttpStatus.SERVICE_UNAVAILABLE.name());
        errorDto.setMessage(getMessage(ServiceUnavailableException.class));
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.BAD_REQUEST);
        errorDto.setAdditionalMessage(e.getMessage());
        return ResponseEntity.ok(errorDto);
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
}
