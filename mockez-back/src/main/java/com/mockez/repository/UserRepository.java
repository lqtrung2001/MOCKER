package com.mockez.repository;

import com.mockez.domain.model.entity.User;
import com.mockez.repository.customize.UserRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface UserRepository extends JpaRepository<User, UUID>, UserRepositoryCustom {
}
