package com.mockez.configuration.security.auth;

import com.mockez.domain.model.entity.User;
import com.mockez.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Slf4j
@Service
@RequiredArgsConstructor
public class ApplicationUserService implements UserDetailsService {

    private final UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User byUsername = userRepository.findByUsername(username);
        if (Optional.ofNullable(byUsername).isEmpty()) {
            log.error("User not found: " + username);
            throw new UsernameNotFoundException("User " + username + " not found");
        }
        return new ApplicationUser(
                byUsername.getUsername(),
                byUsername.getPassword(),
                byUsername.getGrantedAuthoritiesWithGrantedAuthorityFormat(),
                byUsername.getIsAccountNonExpired(),
                byUsername.getIsAccountNonLocked(),
                byUsername.getIsCredentialsNonExpired(),
                byUsername.getIsEnabled()
        );
    }
}
