package com.mocker.service.impl;

import com.mocker.domain.exception.NotFoundException;
import com.mocker.domain.model.entity.GenerateType;
import com.mocker.repository.GenerateTypeRepository;
import com.mocker.repository.SQLTypeRepository;
import com.mocker.service.GenerateTypeService;
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
public class GenerateTypeServiceImpl implements GenerateTypeService {

    private final GenerateTypeRepository generateTypeRepository;
    private final SQLTypeRepository sqlTypeRepository;

    @Override
    public GenerateType getGenerateType(UUID id) {
        return generateTypeRepository.findById(id)
                .orElseThrow(() -> new NotFoundException(id));
    }

    @Override
    public List<GenerateType> getGenerateTypesBySQLType(UUID sqlTypeId) {
        return sqlTypeRepository.findById(sqlTypeId)
                .orElseThrow()
                .getGenerateTypes();
    }

    @Override
    public List<GenerateType> getGenerateTypes() {
        return generateTypeRepository.findAll();
    }
}
