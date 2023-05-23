package com.mocker.domain.exception;

import com.mocker.domain.dto.ErrorDto;
import com.mocker.utility.MessageContextHelper;
import com.sun.jdi.InternalException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.orm.ObjectOptimisticLockingFailureException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.persistence.OptimisticLockException;
import java.sql.Timestamp;
import java.time.Instant;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@RestControllerAdvice
public class ApiExceptionHandler {

    /**
     * The default handler
     *
     * @param exception The exception to be handled
     * @return The ErrorDto instance
     */
    @ExceptionHandler(Exception.class)
    public ResponseEntity<ErrorDto> handleDefaultException(Exception exception) {
        exception.printStackTrace();
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(now().toString());
        errorDto.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
        errorDto.setError(HttpStatus.INTERNAL_SERVER_ERROR.name());
        errorDto.setMessage(getMessage(Exception.class));
        errorDto.setPath(exception.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.UNEXPECTED_EXCEPTION);
        errorDto.setAdditionalMessage(exception.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.INTERNAL_SERVER_ERROR);
    }

    /**
     * The AuthenticationException handler
     *
     * @param authenticationException The authentication exception to be handled
     * @return The ErrorDto instance
     */
    @ExceptionHandler(AuthenticationException.class)
    public ResponseEntity<ErrorDto> handleAuthenticationException(AuthenticationException authenticationException) {
        authenticationException.printStackTrace();
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(now().toString());
        errorDto.setStatus(HttpStatus.FORBIDDEN.value());
        errorDto.setError(HttpStatus.FORBIDDEN.name());
        errorDto.setMessage(getMessage(AuthenticationException.class));
        errorDto.setPath(authenticationException.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.AUTHENTICATION_EXCEPTION);
        errorDto.setAdditionalMessage(authenticationException.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.FORBIDDEN);
    }

    /**
     * The NotFoundException handler
     *
     * @param notFoundException The not found exception to be handled
     * @return The ErrorDto instance
     */
    @ExceptionHandler(NotFoundException.class)
    public ResponseEntity<ErrorDto> handleNotFoundException(NotFoundException notFoundException) {
        notFoundException.printStackTrace();
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(now().toString());
        errorDto.setStatus(HttpStatus.NOT_FOUND.value());
        errorDto.setError(HttpStatus.NOT_FOUND.name());
        errorDto.setMessage(getMessage(NotFoundException.class));
        errorDto.setPath(notFoundException.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.NOT_FOUND);
        errorDto.setAdditionalMessage(notFoundException.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.NOT_FOUND);
    }

    /**
     * The BadRequestException handler
     *
     * @param badRequestException The bad request exception to be handled
     * @return The ErrorDto instance
     */
    @ExceptionHandler(value = {BadRequestException.class})
    public ResponseEntity<ErrorDto> handleBadRequestException(BadRequestException badRequestException) {
        badRequestException.printStackTrace();
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(now().toString());
        errorDto.setStatus(HttpStatus.BAD_REQUEST.value());
        errorDto.setError(HttpStatus.BAD_REQUEST.name());
        errorDto.setMessage(getMessage(BadRequestException.class));
        errorDto.setPath(badRequestException.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.BAD_REQUEST);
        errorDto.setAdditionalMessage(badRequestException.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.BAD_REQUEST);
    }

    /**
     * The UnauthorizedException handler
     *
     * @param unauthorizedException The unauthorized exception to be handled
     * @return The ErrorDto instance
     */
    @ExceptionHandler(value = {UnauthorizedException.class})
    public ResponseEntity<ErrorDto> handleUnauthorizedException(UnauthorizedException unauthorizedException) {
        unauthorizedException.printStackTrace();
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(now().toString());
        errorDto.setStatus(HttpStatus.UNAUTHORIZED.value());
        errorDto.setError(HttpStatus.UNAUTHORIZED.name());
        errorDto.setMessage(getMessage(UnauthorizedException.class));
        errorDto.setPath(unauthorizedException.getStackTrace()[0].toString());
        errorDto.setCode(ErrorDto.CodeEnum.PERMISSION_EXCEPTION);
        errorDto.setAdditionalMessage(unauthorizedException.getMessage());
        return new ResponseEntity<>(errorDto, HttpStatus.UNAUTHORIZED);
    }

    /**
     * The OptimisticLockException handler
     *
     * @param objectOptimisticLockingFailureException The objectOptimisticLockingFailureException to be handled
     * @return The ErrorDto instance
     */
    @ExceptionHandler(ObjectOptimisticLockingFailureException.class)
    public ResponseEntity<ErrorDto> handleOptimisticLockException(ObjectOptimisticLockingFailureException objectOptimisticLockingFailureException) {
        objectOptimisticLockingFailureException.printStackTrace();
        ErrorDto errorDto = new ErrorDto();
        errorDto.setTimestamp(now().toString());
        errorDto.setStatus(HttpStatus.LOCKED.value());
        errorDto.setError(HttpStatus.LOCKED.name());
        errorDto.setMessage(getMessage(Exception.class));
        errorDto.setCode(ErrorDto.CodeEnum.CONFLICT);
        errorDto.setAdditionalMessage("This entity/resource was updated by another transaction, please reload page by using F5 on your computer and try again.");
        return new ResponseEntity<>(errorDto, HttpStatus.LOCKED);
    }

    private String getMessage(Class<? extends Exception> clazz) {
        StringBuilder message = new StringBuilder("exception.");
        if (clazz.getSimpleName().equals("BadRequestException") || clazz.isInstance(BadRequestException.class)) {
            message.append("bad_request");
        }
        if (clazz.getSimpleName().equals("AuthenticationException") || clazz.isInstance(AuthenticationException.class)) {
            message.append("authentication");
        }
        if (clazz.getSimpleName().equals("InternalException") || clazz.isInstance(InternalException.class)) {
            message.append("internal");
        }
        if (clazz.getSimpleName().equals("NotFoundException") || clazz.isInstance(NotFoundException.class)) {
            message.append("not_found");
        }
        if (clazz.getSimpleName().equals("UnauthorizedException") || clazz.isInstance(UnauthorizedException.class)) {
            message.append("unauthorized");
        } else {
            message.append("business_application_error");
        }
        return MessageContextHelper.getMessage(message.toString());
    }

    private Timestamp now() {
        return Timestamp.from(Instant.now());
    }

}
