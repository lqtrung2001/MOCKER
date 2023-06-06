package com.mocker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationPropertiesScan;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableOAuth2Client;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 * @since 2022
 */

@EnableAsync
@EnableCaching
@EnableOAuth2Client
@SpringBootApplication
@ConfigurationPropertiesScan
public class MockerBackApplication {

    public static void main(String[] args) {
        SpringApplication.run(MockerBackApplication.class, args);
    }

}
