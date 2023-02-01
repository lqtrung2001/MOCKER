package com.mockez.service.impl;

import com.mockez.domain.exception.UnexpectedException;
import com.mockez.domain.model.entity.User;
import com.mockez.domain.model.entity.enumeration.Gender;
import com.mockez.repository.UserRepository;
import com.mockez.service.AuthService;
import lombok.RequiredArgsConstructor;
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
import java.util.Random;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
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
        try {
            Random random = new Random();
            String verificationCode = String.valueOf(random.nextInt(10000, 99999));
            SimpleMailMessage message = new SimpleMailMessage();
            message.setFrom("mockezservice@gmail.com");
            message.setTo(username);
            message.setText("The verification code is: " + verificationCode);
            message.setSubject("Mocker account verification code");
            send(message);
            verificationMap.put(username, verificationCode);
            return true;
        } catch (Exception exception) {
            throw new UnexpectedException(Strings.EMPTY);
        }
    }

    @Async
    public void send(SimpleMailMessage message) {
        mailSender.send(message);
    }

    @Override
    public User verifyAndSave(String verificationCode, User user) {
        if (verificationMap.containsKey(user.getUsername()) && verificationMap.get(user.getUsername()).equals(verificationCode)) {
            verificationMap.remove(user.getUsername());
            if (Strings.isNotBlank(user.getPassword())) {
                return userRepository.save(User.builder()
                        .username(user.getUsername())
                        .password(passwordEncoder.encode(user.getPassword()))
                        .name("User-" + verificationCode)
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
                        .build());
            } else {
                User userForgotPassword = userRepository.findByUsername(user.getUsername());
                userForgotPassword.setPassword(passwordEncoder.encode(verificationCode));
                return userRepository.save(userForgotPassword);
            }
        }
        throw new IllegalStateException("Verification code is not correct");
    }

}
