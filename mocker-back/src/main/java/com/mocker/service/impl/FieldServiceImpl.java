package com.mocker.service.impl;

import com.mocker.domain.model.entity.Field;
import com.mocker.repository.FieldRepository;
import com.mocker.service.FieldService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class FieldServiceImpl implements FieldService {

    private final FieldRepository fieldRepository;

    @Override
    public List<Field> getFieldsByTable(UUID tableId) {
        return fieldRepository.getFieldsByTable(tableId);
    }
}
