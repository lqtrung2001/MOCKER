package com.mockez.repository;

import com.mockez.domain.model.entity.Group;
import com.mockez.domain.model.entity.Project;
import com.mockez.repository.customize.ProjectRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Repository
public interface ProjectRepository extends JpaRepository<Project, UUID>, ProjectRepositoryCustom {

    List<Project> findAllByGroup(Group group);

}
