package com.mocker.repository;

import com.mocker.domain.model.entity.GenerateType;
import com.mocker.repository.customize.GenerateTypeRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Repository
public interface GenerateTypeRepository extends JpaRepository<GenerateType, UUID>, GenerateTypeRepositoryCustom {
}
