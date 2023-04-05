package com.mocker.service.impl;

import com.mocker.domain.model.entity.Category;
import com.mocker.repository.CategoryRepository;
import com.mocker.service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Service
@Transactional
@RequiredArgsConstructor
public class CategoryServiceImpl implements CategoryService {

    private final CategoryRepository categoryRepository;

    @Override
    public List<Category> getCategories() {
        return categoryRepository.findAll();
    }

    @Override
    public Category getCategoryHasGenerateTypes(UUID id) {
        return categoryRepository.getCategoryHasGenerateTypes(id);
    }

    @Override
    public Integer getGenerateTypesCount(UUID id) {
        return categoryRepository.getGenerateTypesCount(id);
    }

    @Override
    @Cacheable("categories")
    public List<Category> getCategoriesFetchGenerateTypes() {
        return categoryRepository.getCategoriesFetchGenerateTypes();
    }
}
