package com.mocker.domain.exception;

import com.mocker.domain.dto.ErrorDto;
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
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.UNPROCESSABLE_ENTITY.value());
        errorDto.setError(HttpStatus.UNPROCESSABLE_ENTITY.name());
        errorDto.setMessage("Application error");
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.BAD_REQUEST);
        errorDto.setAdditionalMessage(e.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.OK);
    }

    @ExceptionHandler(value = {AuthenticationException.class})
    public ResponseEntity<ErrorDto> handleAuthenticationException(AuthenticationException e) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.UNAUTHORIZED.value());
        errorDto.setError(HttpStatus.UNAUTHORIZED.name());
        errorDto.setMessage("Application Exception");
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.AUTHENTICATION_EXCEPTION);
        errorDto.setAdditionalMessage(e.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.OK);
    }

    @ExceptionHandler(value = {BadRequestException.class})
    public ResponseEntity<ErrorDto> handleBadRequestException(BadRequestException e) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.BAD_REQUEST.value());
        errorDto.setError(HttpStatus.BAD_REQUEST.name());
        errorDto.setMessage("Application Exception");
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.BAD_REQUEST);
        errorDto.setAdditionalMessage(e.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.OK);
    }

    @ExceptionHandler(value = {ConflictException.class})
    public ResponseEntity<ErrorDto> handleConflictException(ConflictException e) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.CONFLICT.value());
        errorDto.setError(HttpStatus.CONFLICT.name());
        errorDto.setMessage("Application Exception");
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.CONFLICT);
        errorDto.setAdditionalMessage(e.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.OK);
    }


    @ExceptionHandler(value = {InternalException.class})
    public ResponseEntity<ErrorDto> handleInternalException(InternalException e) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
        errorDto.setError(HttpStatus.INTERNAL_SERVER_ERROR.name());
        errorDto.setMessage("Application Exception");
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.BAD_REQUEST);
        errorDto.setAdditionalMessage(e.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.OK);
    }

    @ExceptionHandler(value = {MethodNotAllowedException.class})
    public ResponseEntity<ErrorDto> handleMethodNotAllowedException(MethodNotAllowedException e) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.METHOD_NOT_ALLOWED.value());
        errorDto.setError(HttpStatus.METHOD_NOT_ALLOWED.name());
        errorDto.setMessage("Application Exception");
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.BAD_REQUEST);
        errorDto.setAdditionalMessage(e.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.OK);
    }

    @ExceptionHandler(value = {NotFoundException.class})
    public ResponseEntity<ErrorDto> handleNotFoundException(NotFoundException e) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.NOT_FOUND.value());
        errorDto.setError(HttpStatus.NOT_FOUND.name());
        errorDto.setMessage("Business Error");
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.NOT_FOUND);
        errorDto.setAdditionalMessage(e.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.OK);
    }

    @ExceptionHandler(value = {PermissionException.class})
    public ResponseEntity<ErrorDto> handlePermissionException(PermissionException e) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.FORBIDDEN.value());
        errorDto.setError(HttpStatus.FORBIDDEN.name());
        errorDto.setMessage("Application Exception");
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.PERMISSION_EXCEPTION);
        errorDto.setAdditionalMessage(e.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.OK);
    }

    @ExceptionHandler(value = {ServiceUnavailableException.class})
    public ResponseEntity<ErrorDto> handleServiceUnavailableException(ServiceUnavailableException e) {
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(ZonedDateTime.now(ZoneId.of("UTC")).toString());
        errorDto.setStatus(HttpStatus.SERVICE_UNAVAILABLE.value());
        errorDto.setError(HttpStatus.SERVICE_UNAVAILABLE.name());
        errorDto.setMessage("Application Exception");
        errorDto.setPath(e.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.BAD_REQUEST);
        errorDto.setAdditionalMessage(e.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.OK);
    }

}
