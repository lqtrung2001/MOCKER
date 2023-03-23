package com.mocker.repository;

import com.mocker.domain.model.entity.TableRelation;
import com.mocker.repository.customize.TableRelationCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

/**
 * @author Do Quoc Viet
 */

@Repository
public interface TableRelationRepository extends JpaRepository<TableRelation, UUID>, TableRelationCustom {
}
