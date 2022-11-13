package com.mockez.configuration.security.jwt;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class UsernameAndPasswordAuthenticationRequest {
    private String username;
    private String password;
}
