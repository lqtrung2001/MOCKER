package com.mockez.repository.customize;

import com.mockez.domain.model.entity.Group;
import com.mockez.domain.model.entity.User;

import java.util.List;
import java.util.Set;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface UserRepositoryCustom {

    User findByEmailAndPassword(String email, String password);

    Set<UUID> findAllGroupIds(UUID id);

//    List<Group> findAllGroups()

}
