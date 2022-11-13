package com.mockez.configuration.security;

import com.mockez.domain.model.entity.User;
import com.mockez.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

import static org.springframework.security.core.context.SecurityContextHolder.getContext;

@Component
@RequiredArgsConstructor
public class ApplicationContextHolder {

    private final UserRepository userRepository;

    public User getCurrentUser() {
        return userRepository.findByUsername(getContext().getAuthentication().getPrincipal().toString());
    }

    public static List<String> getAuthorities() {
        return getContext().getAuthentication()
                .getAuthorities()
                .stream()
                .map(GrantedAuthority::getAuthority)
                .collect(Collectors.toList());
    }
}
