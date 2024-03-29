package com.mocker.configuration.security;

import com.mocker.domain.model.entity.User;
import com.mocker.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

import static org.springframework.security.core.context.SecurityContextHolder.getContext;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

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
