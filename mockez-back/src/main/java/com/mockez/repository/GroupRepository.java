package com.mockez.repository;

import com.mockez.domain.model.entity.Group;
import com.mockez.repository.customize.GroupRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Repository
public interface GroupRepository extends JpaRepository<Group, UUID>, GroupRepositoryCustom {
}
