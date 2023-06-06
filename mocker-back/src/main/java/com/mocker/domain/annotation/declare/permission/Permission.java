package com.mocker.domain.annotation.declare.permission;

import com.mocker.domain.model.entity.enumeration.Role;

import java.lang.annotation.*;

/**
 * @author Do Quoc Viet
 */

@Documented
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface Permission {
    Role[] roles() default {};
}
