package com.mockez.constant;

import java.util.UUID;

public class Constant {
    public final static String secretKey = UUID.randomUUID().toString();
    public final static String tokenPrefix = "Bearer ";
    public final static Integer tokenExpirationAfterDays = 10;
}
