package com.mocker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationPropertiesScan;
import org.springframework.scheduling.annotation.EnableAsync;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 * @since 2022
 */

@EnableAsync
@SpringBootApplication
@ConfigurationPropertiesScan
public class MockerBackApplication {

    public static void main(String[] args) {
        SpringApplication.run(MockerBackApplication.class, args);
    }

}
