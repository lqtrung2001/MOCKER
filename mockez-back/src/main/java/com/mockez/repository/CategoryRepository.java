package com.mockez.repository;

import com.mockez.api.CategoryApi;
import com.mockez.repository.customize.CategoryRepositoryCustomizeImpl;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends JpaRepository<CategoryApi, String>, CategoryRepositoryCustomizeImpl {
}
