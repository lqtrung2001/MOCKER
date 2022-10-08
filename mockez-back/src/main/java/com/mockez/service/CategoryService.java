package com.mockez.service;

import com.mockez.domain.model.entity.Category;

import java.util.List;
import java.util.UUID;

public interface CategoryService {

    /**
     * CATEGORY.01 GET /category
     * @return categories
     */
    List<Category> getCategories();

    /**
     * CATEGORY.02 GET /category/{id}
     * @param id of category
     * @return category
     */
    Category getCategory(UUID id);

}
