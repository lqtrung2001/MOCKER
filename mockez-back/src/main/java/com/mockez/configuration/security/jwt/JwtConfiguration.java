package com.mockez.configuration.security.jwt;

import com.mockez.constant.Constant;
import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import static com.google.common.net.HttpHeaders.AUTHORIZATION;
import static com.google.common.net.HttpHeaders.USER_AGENT;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Getter
@Setter
@Configuration
@EnableConfigurationProperties
public class JwtConfiguration {

    private final String secretKey = Constant.secretKey;
    private final String tokenPrefix = Constant.tokenPrefix;
    private final Integer tokenExpirationAfterDays = Constant.tokenExpirationAfterDays;

    public String getAuthorizationHeader() {
        return AUTHORIZATION;
    }

    public String getUserAgent() {
        return USER_AGENT;
    }
}
