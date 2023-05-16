package com.mocker.service.impl;

import com.mocker.configuration.security.ApplicationContextHolder;
import com.mocker.constant.GoogleConstant;
import com.mocker.domain.exception.BadRequestException;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.exception.PermissionException;
import com.mocker.domain.model.entity.User;
import com.mocker.domain.model.entity.enumeration.Gender;
import com.mocker.repository.UserRepository;
import com.mocker.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.client.OAuth2AuthorizedClient;
import org.springframework.security.oauth2.client.OAuth2AuthorizedClientService;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.security.oauth2.core.OAuth2AccessToken;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import java.time.OffsetDateTime;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;
    private final ApplicationContextHolder applicationContextHolder;
    private final PasswordEncoder passwordEncoder;
    private final OAuth2AuthorizedClientService authorizedClientService;

    @Override
    public Boolean isExistedUsername(String username) {
        return Optional.ofNullable(userRepository.findByUsername(username)).isPresent();
    }

    @Override
    public User upsert(User user) {
        return userRepository.save(user);
    }

    @Override
    public User saveUserGoogle() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication instanceof OAuth2AuthenticationToken oauthToken) {
            OAuth2User oAuth2User = oauthToken.getPrincipal();
            String email = oAuth2User.getAttribute(GoogleConstant.EMAIL);
            String username = oAuth2User.getAttribute(GoogleConstant.NAME);
            OAuth2AuthorizedClient authorizedClient = getAuthorizedClient(oauthToken.getAuthorizedClientRegistrationId());
            if (authorizedClient == null) {
                throw new BadRequestException();
            }
            OAuth2AccessToken accessToken = authorizedClient.getAccessToken();
            String tokenId = accessToken.getTokenValue().substring(10, 20);
            System.out.println(tokenId);
            if (!isExistedUsername(email)) {
                return userRepository.save(User.builder()
                                .username(email)
                                .password(passwordEncoder.encode(tokenId))
                                .name(username)
                                .bio("N/A")
                                .address("N/A")
                                .dob(OffsetDateTime.now())
                                .gender(Gender.MALE)
                                .phone("N/A")
                                .grantedAuthorities("ROLE_USER")
                                .isAccountNonExpired(true)
                                .isCredentialsNonExpired(true)
                                .isAccountNonLocked(true)
                                .isEnabled(true)
                                .build())
                        .toBuilder().password(tokenId).build();
            } else {
                User userByUsername = getUserByUsername(email);
                userByUsername.setPassword(passwordEncoder.encode(tokenId));
                return userRepository.save(userByUsername).toBuilder().password(tokenId).build();
            }
        }
        throw new BadRequestException();
    }

    @Override
    public User authentication(String email, String password) {
        return Optional.ofNullable(userRepository.findByEmailAndPassword(email, password))
                .orElseThrow(() -> new NotFoundException(email));
    }

    @Override
    public User getUserByUsername(String username) {
        if (!Objects.equals(username, applicationContextHolder.getCurrentUser().getUsername())) {
            throw new PermissionException("validation.permission");
        }
        return Optional.ofNullable(userRepository.findByUsername(username))
                .orElseThrow(() -> new NotFoundException(username));
    }

    @Override
    public UUID update(User user) {
        String currentPassword = getUser(user.getId()).getPassword();
        user.setPassword(currentPassword);
        return userRepository.save(user).getId();
    }

    @Override
    public User getUser(UUID id) {
        return userRepository.findById(id)
                .orElseThrow(() -> new NotFoundException(id));
    }

    @Override
    public List<User> getUsers() {
        return userRepository.findAll();
    }

    @Override
    public User delete(UUID id) {
        User user = userRepository.findById(id)
                .orElseThrow(() -> new NotFoundException(id));
        userRepository.deleteById(id);
        return user;
    }

    @Override
    public UUID saveUser(User user) {
        return Optional.ofNullable(userRepository.save(user).getId())
                .orElseThrow(() -> new NotFoundException(user.getId()));
    }

    @Override
    public User changePassword(UUID id, String currentPassword, String newPassword) {
        User user = userRepository.findById(id).orElseThrow();
        // Check old password
        if (!passwordEncoder.matches(currentPassword, user.getPassword())) {
            throw new BadRequestException("validation.match_password");
        }
        user.setPassword(passwordEncoder.encode(newPassword));
        return userRepository.save(user);
    }

    private OAuth2AuthorizedClient getAuthorizedClient(String clientRegistrationId) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication instanceof OAuth2AuthenticationToken oauthToken) {
            return authorizedClientService.loadAuthorizedClient(clientRegistrationId, oauthToken.getName());
        }
        return null;
    }
}
