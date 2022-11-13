package com.mockez.configuration.security;

import com.mockez.configuration.security.auth.ApplicationUserService;
import com.mockez.configuration.security.jwt.JwtConfiguration;
import com.mockez.configuration.security.jwt.JwtTokenVerifier;
import com.mockez.configuration.security.jwt.JwtUsernameAndPasswordAuthenticationFilter;
import lombok.RequiredArgsConstructor;
import org.jetbrains.annotations.NotNull;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.crypto.SecretKey;

@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class ApplicationSecurityConfiguration extends WebSecurityConfigurerAdapter {

    private final PasswordEncoder passwordEncoder;
    private final ApplicationUserService applicationUserService;
    private final SecretKey secretKey;
    private final JwtConfiguration jwtConfiguration;

    @Override
    protected void configure(@NotNull HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .sessionManagement()
                .sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .addFilter(new JwtUsernameAndPasswordAuthenticationFilter(authenticationManager(), jwtConfiguration, secretKey))
                .addFilterAfter(new JwtTokenVerifier(secretKey, jwtConfiguration), JwtUsernameAndPasswordAuthenticationFilter.class)
                .authorizeRequests()
                .antMatchers("/api/**").hasAnyRole(ApplicationUserRole.USER.name(), ApplicationUserRole.ADMIN.name())
                .anyRequest()
                .authenticated();
    }

    @Override
    protected void configure(@NotNull AuthenticationManagerBuilder auth) {
        auth.authenticationProvider(daoAuthenticationProvider());
    }

    @Bean
    public DaoAuthenticationProvider daoAuthenticationProvider() {
        DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
        provider.setUserDetailsService(applicationUserService);
        provider.setPasswordEncoder(passwordEncoder);
        return provider;
    }
}
