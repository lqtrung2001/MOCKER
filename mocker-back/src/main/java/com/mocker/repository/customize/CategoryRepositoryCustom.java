package com.mocker.repository.customize;

import com.mocker.domain.model.entity.Category;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

public interface CategoryRepositoryCustom {
    Integer getGenerateTypesCount(UUID id);

    Category getCategoryHasGenerateTypes(UUID id);

    List<Category> getCategoriesFetchGenerateTypes();
}
