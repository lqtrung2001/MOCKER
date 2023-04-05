package com.mocker.domain.exception;

import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

public class NotFoundException extends AbstractException {

    public NotFoundException(UUID entityId) {
        super("exception.not_found.default_message", entityId.toString());
    }

    public NotFoundException(String message, String... params) {
        super(message, params);
    }


}
