package com.mocker.repository;

import com.mocker.domain.model.entity.Field;
import com.mocker.repository.customize.FieldRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Repository
public interface FieldRepository extends JpaRepository<Field, UUID>, FieldRepositoryCustom {
}
