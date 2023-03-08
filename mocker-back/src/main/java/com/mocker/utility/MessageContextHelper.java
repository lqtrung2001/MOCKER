package com.mocker.utility;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

@Configuration
@PropertySource("classpath:i18n/message.properties")
public class MessageContextHelper {
    private static Environment environment;

    @Autowired
    public void setEnvironment(final Environment environment) {
        MessageContextHelper.environment = environment;
    }

    public static String getMessage(String key) {
        return environment.getProperty(key);
    }

}
