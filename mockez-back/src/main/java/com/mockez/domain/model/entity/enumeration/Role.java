package com.mockez.domain.model.entity.enumeration;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum Role {

    APPLICATION("application_admin"),
    APPLICATION_GUEST("application_guest"),
    GROUP_ADMIN("group_admin"),
    GROUP_ASSOCIATE("group_associate");

    private final String value;
}
