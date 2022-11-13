package com.mockez.configuration.security;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum ApplicationUserPermission {

    GROUP_READ("group:read"),
    GROUP_WRITE("group:write"),
    PROJECT_READ("project:read"),
    PROJECT_WRITE("project:write"),
    SCHEMA_READ("schema:read"),
    SCHEMA_WRITE("schema:write");

    private final String permission;

}
