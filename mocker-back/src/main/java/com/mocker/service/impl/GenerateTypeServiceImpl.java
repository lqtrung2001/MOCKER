package com.mocker.service.impl;

import com.mocker.domain.exception.InternalException;
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
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class GenerateTypeServiceImpl implements GenerateTypeService {

    private final GenerateTypeRepository generateTypeRepository;
    private final SQLTypeRepository sqlTypeRepository;

    @Override
    public GenerateType getGenerateType(UUID id) throws InternalException {
        try {
            return generateTypeRepository.findById(id).orElseThrow();
        } catch (Exception e) {
            throw new InternalException("validation.dataAccessError");

        }
    }

    @Override
    public List<GenerateType> getGenerateTypesBySQLType(UUID sqlTypeId) throws NotFoundException {
        try {
            return sqlTypeRepository.findById(sqlTypeId).orElseThrow().getGenerateTypes();
        } catch (Exception e) {
            throw new NotFoundException("validation.dataAccessError");
        }
    }

    @Override
    public List<GenerateType> getGenerateTypes() throws InternalException {
        try {
            return generateTypeRepository.findAll();
        } catch (Exception e) {
            throw new InternalException("validation.dataAccessError");
        }
    }
}
