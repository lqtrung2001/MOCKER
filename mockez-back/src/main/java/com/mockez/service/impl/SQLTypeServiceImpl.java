package com.mockez.service.impl;

import com.mockez.domain.model.entity.SQLType;
import com.mockez.repository.SQLTypeRepository;
import com.mockez.service.SQLTypeService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class SQLTypeServiceImpl implements SQLTypeService {

    private final SQLTypeRepository sqlTypeRepository;

    @Override
    public List<SQLType> getSQLTypes() {
        return sqlTypeRepository.findAll();
    }
}
