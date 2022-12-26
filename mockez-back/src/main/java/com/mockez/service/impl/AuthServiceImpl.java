package com.mockez.service.impl;

import com.mockez.domain.exception.UnexpectedException;
import com.mockez.domain.model.entity.User;
import com.mockez.domain.model.entity.enumeration.Gender;
import com.mockez.repository.UserRepository;
import com.mockez.service.AuthService;
import lombok.RequiredArgsConstructor;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

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
    protected Map<String, Integer> mapOTP = new HashMap<>();
    private final PasswordEncoder passwordEncoder;

    @Override
    public Boolean sendOTPCode(String username) {
        try {
            Random random = new Random();
            Integer otp = random.nextInt(10000, 99999);
            SimpleMailMessage message = new SimpleMailMessage();
            message.setFrom("mockezservice@gmail.com");
            message.setTo(username);
            message.setText("The verification code is: " + otp);
            message.setSubject("Mockez account verification code");
            mailSender.send(message);
            mapOTP.put(username, otp);
            return true;
        } catch (Exception exception) {
            throw new UnexpectedException("");
        }

    }

    @Override
    public User validateAndSave(Integer otpCode, User user) {
        if (mapOTP.containsKey(user.getUsername()) && mapOTP.get(user.getUsername()).equals(otpCode)) {
            mapOTP.remove(user.getUsername());
            if (!StringUtils.isEmpty(user.getPassword())) {
                return userRepository.save(User.builder()
                        .username(user.getUsername())
                        .password(passwordEncoder.encode(user.getPassword()))
                        .name("User-" + otpCode)
                        .bio("N/A")
                        .address("N/A")
                        .dob(OffsetDateTime.now())
                        .gender(Gender.FEMALE)
                        .phone("N/A")
                        .grantedAuthorities("ROLE_USER")
                        .isAccountNonExpired(true)
                        .isCredentialsNonExpired(true)
                        .isAccountNonLocked(true)
                        .isEnabled(true)
                        .build());
            } else {
                User userForgotPassword = userRepository.findByUsername(user.getUsername());
                userForgotPassword.setPassword(passwordEncoder.encode(otpCode.toString()));
                return userRepository.save(userForgotPassword);
            }
        }
        throw new UnexpectedException("OTP is wrong");
    }

}
