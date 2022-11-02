package com.mockez.service.impl;

import com.mockez.domain.model.entity.GenerateType;
import com.mockez.repository.GenerateTypeRepository;
import com.mockez.repository.SQLTypeRepository;
import com.mockez.service.GenerateTypeService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class GenerateTypeServiceImpl implements GenerateTypeService {

    private final GenerateTypeRepository generateTypeRepository;
    private final SQLTypeRepository sqlTypeRepository;

    @Override
    public GenerateType getGenerateType(UUID id) {
        return generateTypeRepository.findById(id).orElseThrow();
    }

    @Override
    public List<GenerateType> getGenerateTypesBySQLType(UUID sqlTypeId) {
        return sqlTypeRepository.findById(sqlTypeId).orElseThrow().getGenerateTypes();
    }

    @Override
    public List<GenerateType> getGenerateTypes() {
        return generateTypeRepository.findAll();
    }
}
