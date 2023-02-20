package com.mocker.service;

import com.mocker.domain.model.entity.Category;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

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
    Category getCategoryHasGenerateTypes(UUID id);

    /**
     * CATEGORY.03 GET /category/{id}/generate-types/count
     * @param id of category
     * @return number of generate-types in category
     */
    Integer getGenerateTypesCount(UUID id);

    List<Category> getCategoriesFetchGenerateTypes();
}
