package com.mocker.configuration.security.jwt;

import com.mocker.constant.SecurityConstant;
import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import static com.google.common.net.HttpHeaders.AUTHORIZATION;
import static com.google.common.net.HttpHeaders.USER_AGENT;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Getter
@Setter
@Configuration
@EnableConfigurationProperties
public class JwtConfiguration {

    private final String secretKey = SecurityConstant.secretKey;
    private final String tokenPrefix = SecurityConstant.tokenPrefix;
    private final Integer tokenExpirationAfterDays = SecurityConstant.tokenExpirationAfterDays;

    public String getAuthorizationHeader() {
        return AUTHORIZATION;
    }

    public String getUserAgent() {
        return USER_AGENT;
    }
}
