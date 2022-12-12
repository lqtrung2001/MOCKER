package com.mockez.domain.model.entity.enumeration;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Getter
@RequiredArgsConstructor
public enum Gender {

    MALE("MALE"),
    FEMALE("FEMALE"),
    OTHER("OTHER");

    private final String value;
}
