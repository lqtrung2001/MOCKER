package com.mocker.configuration.security;

import com.google.common.collect.Sets;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import java.util.Set;
import java.util.stream.Collectors;

import static com.mocker.configuration.security.ApplicationUserPermission.GROUP_READ;
import static com.mocker.configuration.security.ApplicationUserPermission.GROUP_WRITE;
import static com.mocker.configuration.security.ApplicationUserPermission.PROJECT_READ;
import static com.mocker.configuration.security.ApplicationUserPermission.PROJECT_WRITE;
import static com.mocker.configuration.security.ApplicationUserPermission.SCHEMA_READ;
import static com.mocker.configuration.security.ApplicationUserPermission.SCHEMA_WRITE;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Getter
@RequiredArgsConstructor
public enum ApplicationUserRole {

    USER(Sets.newHashSet()),
    ADMIN(Sets.newHashSet(
            GROUP_READ,
            GROUP_WRITE,
            PROJECT_READ,
            PROJECT_WRITE,
            SCHEMA_READ,
            SCHEMA_WRITE
    ));

    private final Set<ApplicationUserPermission> permissions;

    public Set<SimpleGrantedAuthority> getGrantedAuthorities() {
        Set<SimpleGrantedAuthority> permissions = getPermissions()
                .stream()
                .map(ApplicationUserPermission::getPermission)
                .map(SimpleGrantedAuthority::new)
                .collect(Collectors.toSet());
        permissions.add(new SimpleGrantedAuthority("ROLE_" + this.name()));
        return permissions;
    }

}
