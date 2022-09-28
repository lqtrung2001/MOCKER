package com.mockez.repository;

import com.mockez.domain.model.GenType;
import com.mockez.repository.customize.GenTypeRepositoryCustomizeImpl;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface GenTypeRepository extends JpaRepository<GenType, String>, GenTypeRepositoryCustomizeImpl {

}
