package com.mocker.repository;

import com.mocker.domain.model.entity.User;
import com.mocker.repository.customize.UserRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Repository
public interface UserRepository extends JpaRepository<User, UUID>, UserRepositoryCustom {

    @Transactional(propagation = Propagation.REQUIRES_NEW)
    User findByUsername(String username);

}
