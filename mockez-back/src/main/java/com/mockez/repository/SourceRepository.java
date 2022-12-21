package com.mockez.repository;

import com.mockez.domain.model.entity.GenerateType;
import com.mockez.domain.model.entity.Source;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Repository
public interface SourceRepository extends JpaRepository<Source, UUID> {

    List<Source> findAllByGenerateType(GenerateType generateType);
}
