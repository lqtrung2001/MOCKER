package com.mocker.service.impl;

import com.mocker.domain.exception.BadRequestException;
import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.model.entity.User;
import com.mocker.domain.model.entity.enumeration.Gender;
import com.mocker.repository.UserRepository;
import com.mocker.service.AuthService;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.apache.logging.log4j.util.Strings;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.Async;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.time.OffsetDateTime;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;
import java.util.Random;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Service
@Transactional
@RequiredArgsConstructor
public class AuthServiceImpl implements AuthService {
    private final JavaMailSender mailSender;
    private final UserRepository userRepository;
    protected Map<String, String> verificationMap = new HashMap<>();
    private final PasswordEncoder passwordEncoder;

    @Override
    public Boolean sendVerificationCode(String username) {
        Random random = new Random();
        String verificationCode = String.valueOf(random.nextInt(10000, 99999));
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("mocker.service@gmail.com");
        message.setTo(username);
        message.setText("The verification code is: " + verificationCode);
        message.setSubject("Mocker account verification code");
        send(message);
        verificationMap.put(username, verificationCode);
        return true;
    }

    @Async
    public void send(SimpleMailMessage message) {
        mailSender.send(message);
    }

    @Override
    public User verifyAndSave(String verificationCode, User user) {
        if (!verificationMap.containsKey(user.getUsername()) || !StringUtils.equals(verificationMap.get(user.getUsername()), verificationCode)) {
            throw new BadRequestException("Invalid verification code: " + verificationCode + ", please check your confirmation code and try again.");
        }
        verificationMap.remove(user.getUsername());
        if (Strings.isNotBlank(user.getPassword())) {
            return userRepository.save(User.builder()
                    .username(user.getUsername())
                    .password(passwordEncoder.encode(user.getPassword()))
                    .name("User-" + verificationCode)
                    .bio(StringUtils.EMPTY)
                    .address(StringUtils.EMPTY)
                    .dob(OffsetDateTime.now())
                    .gender(Gender.MALE)
                    .phone(StringUtils.EMPTY)
                    .grantedAuthorities("ROLE_USER")
                    .isAccountNonExpired(true)
                    .isCredentialsNonExpired(true)
                    .isAccountNonLocked(true)
                    .isEnabled(true)
                    .build());
        } else {
            User userForgotPassword = Optional.ofNullable(userRepository.findByUsername(user.getUsername()))
                    .orElseThrow(() -> new NotFoundException(user.getUsername()));
            userForgotPassword.setPassword(passwordEncoder.encode(verificationCode));
            return userRepository.save(userForgotPassword);
        }
    }
}
