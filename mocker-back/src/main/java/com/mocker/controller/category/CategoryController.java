package com.mocker.controller.category;

import com.mocker.api.CategoryApi;
import com.mocker.controller.maper.ApiAbstractMapper;
import com.mocker.domain.dto.CategoryDto;
import com.mocker.service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/v1")
public class CategoryController implements CategoryApi {
    private final ApiCategoryMapper apiCategoryMapper;
    private final CategoryService categoryService;

    @Override
    public ResponseEntity<List<CategoryDto>> getCategories() {
        return ResponseEntity.ok(categoryService.getCategoriesFetchGenerateTypes().stream()
                .map(apiCategoryMapper::map).collect(Collectors.toList()));
    }

    @Override
    public ResponseEntity<CategoryDto> getCategory(UUID id) {
        return ResponseEntity.ok(apiCategoryMapper.mapWithEagerGenerateTypes(categoryService.getCategoryHasGenerateTypes(id)));
    }

    @Override
    public ResponseEntity<Integer> getGenerateTypesCount(UUID id) {
        return ResponseEntity.ok(categoryService.getGenerateTypesCount(id));
    }
    
}
