package com.mockez.service.impl;

import com.mockez.domain.model.entity.Table;
import com.mockez.repository.TableRepository;
import com.mockez.service.TableService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Service
@RequiredArgsConstructor
public class TableServiceImpl implements TableService {

    private final TableRepository tableRepository;

    @Override
    public Table getTable(UUID id) {
        return tableRepository.findOneWithEagerFields(id);
    }

    @Override
    public List<Table> getTablesBySchema(UUID schemaId) {
        return tableRepository.findAllBySchema(schemaId);
    }
}
