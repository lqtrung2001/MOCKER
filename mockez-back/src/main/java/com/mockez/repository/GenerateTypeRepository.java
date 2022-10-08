package com.mockez.repository;

import com.mockez.domain.model.entity.GenerateType;
import com.mockez.repository.customize.GenerateTypeRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface GenerateTypeRepository extends JpaRepository<GenerateType, UUID>, GenerateTypeRepositoryCustom {

}
