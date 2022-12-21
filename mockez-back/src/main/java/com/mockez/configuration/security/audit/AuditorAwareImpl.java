package com.mockez.configuration.security.audit;

import com.mockez.configuration.security.ApplicationContextHolder;
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
        return Optional.of(applicationContextHolder.getCurrentUser().getId().toString());
    }
}
