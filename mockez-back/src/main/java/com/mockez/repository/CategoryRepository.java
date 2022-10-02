package com.mockez.repository;

import com.mockez.domain.model.entity.Category;
import com.mockez.repository.customize.CategoryRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends JpaRepository<Category, String>, CategoryRepositoryCustom {
}
