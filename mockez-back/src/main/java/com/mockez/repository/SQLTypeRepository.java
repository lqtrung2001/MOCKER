package com.mockez.repository;

import com.mockez.domain.model.entity.SQLType;
import com.mockez.repository.customize.SQLTypeRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface SQLTypeRepository extends JpaRepository<SQLType, UUID>, SQLTypeRepositoryCustom {



}
