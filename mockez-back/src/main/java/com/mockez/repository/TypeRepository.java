package com.mockez.repository;

import com.mockez.domain.model.Type;
import com.mockez.repository.customize.TypeRepositoryCustomizeImpl;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TypeRepository extends JpaRepository<Type, String>, TypeRepositoryCustomizeImpl {



}
