package com.mocker.repository;

import com.mocker.domain.model.entity.Group;
import com.mocker.repository.customize.GroupRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Repository
public interface GroupRepository extends JpaRepository<Group, UUID>, GroupRepositoryCustom {
}
