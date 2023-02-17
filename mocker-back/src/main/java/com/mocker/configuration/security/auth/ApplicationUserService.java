package com.mocker.configuration.security.auth;

import com.mocker.domain.model.entity.User;
import com.mocker.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Slf4j
@Service
@RequiredArgsConstructor
public class ApplicationUserService implements UserDetailsService {

    private final UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User byUsername = userRepository.findByUsername(username);
        if (byUsername == null) {
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
