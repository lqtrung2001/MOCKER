package com.mocker.service.impl;

import com.mocker.domain.exception.NotFoundException;
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
 * @author Luong Quoc Trung, Do Quoc Viet
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
    public Category getCategoryHasGenerateTypes(UUID id) throws NotFoundException {
        try {
            return categoryRepository.getCategoryHasGenerateTypes(id);
        } catch (Exception e) {
            throw new NotFoundException("exception.not_found");
        }
    }

    @Override
    public Integer getGenerateTypesCount(UUID id) throws NotFoundException {
        try {
            return categoryRepository.getGenerateTypesCount(id);
        } catch (Exception e) {
            throw new NotFoundException("exception.not_found");
        }
    }

    @Override
    @Cacheable("categories")
    public List<Category> getCategoriesFetchGenerateTypes() throws NotFoundException {
        // TODO: Do Quoc Viet
        if(true) throw new NotFoundException("exception.not_found");
        try {
            return categoryRepository.getCategoriesFetchGenerateTypes();
        } catch (Exception e) {
            throw new NotFoundException("exception.not_found");
        }
    }
}
