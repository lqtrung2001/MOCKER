package com.mockez.repository;

import com.mockez.domain.model.entity.Schema;
import com.mockez.repository.customize.SchemaRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface SchemaRepository extends JpaRepository<Schema, UUID>, SchemaRepositoryCustom {
}
