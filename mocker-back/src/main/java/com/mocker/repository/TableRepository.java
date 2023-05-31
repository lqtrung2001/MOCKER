package com.mocker.repository;

import com.mocker.domain.model.entity.Table;
import com.mocker.repository.customize.TableRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Repository
public interface TableRepository extends JpaRepository<Table, UUID>, TableRepositoryCustom {
    Table findOneByNameAndSchemaId(String name, UUID schemaId);
}
