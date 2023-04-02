package com.mocker.controller.category;

import com.mocker.api.CategoryApi;
import com.mocker.domain.dto.CategoryDto;
import com.mocker.service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/v1")
public class CategoryController implements CategoryApi {
    private final ApiCategoryMapperDecorator apiCategoryMapperDecorator;
    private final CategoryService categoryService;

    @Override
    public ResponseEntity<List<CategoryDto>> getCategories() {
        return ResponseEntity.ok(apiCategoryMapperDecorator.mapToCategoriesDtoFetchGenerateTypes(categoryService.getCategoriesFetchGenerateTypes()));
    }

}
