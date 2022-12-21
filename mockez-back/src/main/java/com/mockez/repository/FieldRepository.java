package com.mockez.repository;

import com.mockez.domain.model.entity.Field;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Repository
public interface FieldRepository extends JpaRepository<Field, UUID> {
}
