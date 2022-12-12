package com.mockez.repository;

import com.mockez.domain.model.entity.Project;
import com.mockez.repository.customize.ProjectRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Repository
public interface ProjectRepository extends JpaRepository<Project, UUID>, ProjectRepositoryCustom {

}
