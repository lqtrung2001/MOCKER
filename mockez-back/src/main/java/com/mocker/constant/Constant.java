package com.mocker.constant;

import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public class Constant {
    public final static String secretKey = UUID.randomUUID().toString();
    public final static String tokenPrefix = "Bearer ";
    public final static Integer tokenExpirationAfterDays = 10;
}
