package com.mockez.domain.model.entity.enumeration;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Getter
@RequiredArgsConstructor
public enum Role {

    GROUP_ADMIN("GROUP_ADMIN"),
    GROUP_ASSOCIATE("GROUP_ASSOCIATE"),
    USER("USER"),
    ADMIN("ADMIN");

    private final String value;
}
