package com.mockez.repository;

import com.mockez.domain.model.Category;
import com.mockez.repository.customize.CategoryRepositoryCustomizeImpl;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends JpaRepository<Category, String>, CategoryRepositoryCustomizeImpl {
}
