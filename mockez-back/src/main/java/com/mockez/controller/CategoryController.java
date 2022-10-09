package com.mockez.controller;

import com.mockez.api.CategoryApi;
import com.mockez.controller.maper.ApiAbstractMapper;
import com.mockez.domain.dto.CategoryDto;
import com.mockez.service.CategoryService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@RestController
@AllArgsConstructor
@RequestMapping(path = "/api/v1")
public class CategoryController implements CategoryApi {

    private final ApiAbstractMapper apiAbstractMapper;
    private final CategoryService categoryService;

    @Override
    public ResponseEntity<List<CategoryDto>> getCategories() {
        return ResponseEntity.ok(categoryService.getCategories().stream()
                .map(apiAbstractMapper::map).collect(Collectors.toList()));
    }

    @Override
    public ResponseEntity<CategoryDto> getCategory(String id) {
        return ResponseEntity.ok(apiAbstractMapper.map(categoryService.getCategory(UUID.fromString(id))));
    }
}
