package com.mockez.repository;

import com.mockez.domain.model.entity.Table;
import com.mockez.repository.customize.TableRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;
@Repository
public interface TableRepository extends JpaRepository<Table, UUID>, TableRepositoryCustom {
}
