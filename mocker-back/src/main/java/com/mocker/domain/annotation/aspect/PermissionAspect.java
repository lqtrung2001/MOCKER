package com.mocker.domain.annotation.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

/**
 * @author Do Quoc Viet
 */

@Aspect
@Component
public class PermissionAspect {
    @Around("@annotation(com.mocker.domain.annotation.declare.permission.Permission)")
    public Object checkPermission(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {

        return proceedingJoinPoint.proceed();
    }

}
