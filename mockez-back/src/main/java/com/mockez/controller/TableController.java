package com.mockez.controller;

import com.mockez.api.TableApi;
import com.mockez.controller.maper.ApiAbstractMapper;
import com.mockez.domain.dto.TableDto;
import com.mockez.service.TableService;
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
public class TableController implements com.mockez.api.TableApi {

    private final ApiAbstractMapper apiAbstractMapper;
    private final TableService tableService;

    @Override
    public ResponseEntity<TableDto> getTable(UUID id) {
        return ResponseEntity.ok(apiAbstractMapper.mapWithEagerFields(tableService.getTable(id)));
    }

    @Override
    public ResponseEntity<List<TableDto>> getTablesBySchema(UUID schemaId) {
        return ResponseEntity.ok(tableService.getTablesBySchema(schemaId)
                .stream()
                .map(apiAbstractMapper::map)
                .collect(Collectors.toList()));
    }

    @Override
    public ResponseEntity<UUID> saveOrUpdateTable(TableDto tableDto) {
        return ResponseEntity.ok(tableService.saveOrUpdateTable(apiAbstractMapper.map(tableDto)));
    }
}
