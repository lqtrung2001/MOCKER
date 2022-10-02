package com.mockez.service;

import com.mockez.domain.model.entity.Category;

import java.util.List;

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
    Category getCategory(String id);

}
