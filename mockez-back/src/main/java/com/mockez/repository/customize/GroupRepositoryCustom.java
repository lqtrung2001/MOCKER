package com.mockez.repository.customize;

import com.mockez.domain.model.entity.Group;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface GroupRepositoryCustom {

    List<Group> findAllWithAccess(UUID userId);

}
