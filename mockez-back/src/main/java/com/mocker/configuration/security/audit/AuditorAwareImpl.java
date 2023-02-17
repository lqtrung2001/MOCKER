package com.mocker.configuration.security.audit;

import com.mocker.configuration.security.ApplicationContextHolder;
import lombok.RequiredArgsConstructor;
import org.jetbrains.annotations.NotNull;
import org.springframework.data.domain.AuditorAware;
import org.springframework.stereotype.Component;

import java.util.Optional;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component
@RequiredArgsConstructor
public class AuditorAwareImpl implements AuditorAware<String> {

    private final ApplicationContextHolder applicationContextHolder;

    @Override
    public @NotNull Optional<String> getCurrentAuditor() {
        if (applicationContextHolder.getCurrentUser() != null) {
            return Optional.of(applicationContextHolder.getCurrentUser().getId().toString());
        }
        // Administrator
        return Optional.of("5ecaf074-a91f-4758-ae0d-0724443a1a7a");
    }
}
