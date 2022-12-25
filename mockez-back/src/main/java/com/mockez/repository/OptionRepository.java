package com.mockez.repository;

import com.mockez.domain.model.entity.Option;
import com.mockez.repository.customize.OptionRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Repository
public interface OptionRepository extends JpaRepository<Option, UUID>, OptionRepositoryCustom {

}
