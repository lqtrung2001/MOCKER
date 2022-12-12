package com.mockez;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.ConfigurationPropertiesScan;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 * @since 2022
 */

@SpringBootApplication
@ConfigurationPropertiesScan
public class MockezBackApplication {

    public static void main(String[] args) {
        SpringApplication.run(MockezBackApplication.class, args);
    }

}
