package com.mocker.repository;

import com.mocker.domain.model.entity.Schema;
import com.mocker.repository.customize.SchemaRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Repository
public interface SchemaRepository extends JpaRepository<Schema, UUID>, SchemaRepositoryCustom {
    Schema findOneByNameAndProjectId(String name, UUID projectId);
}
