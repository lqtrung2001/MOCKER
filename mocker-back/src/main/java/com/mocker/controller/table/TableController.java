package com.mocker.controller.table;

import com.mocker.api.TableApi;
import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.TableDto;
import com.mocker.service.TableService;
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
public class TableController implements com.mocker.api.TableApi {
    private final ApiAbstractMapper apiAbstractMapper;
    private final ApiTableMapper apiTableMapper;
    private final TableService tableService;

    @Override
    public ResponseEntity<TableDto> getTable(UUID id) {
        return ResponseEntity.ok(apiTableMapper.mapFetchFields(tableService.getTable(id)));
    }

    @Override
    public ResponseEntity<List<TableDto>> getTablesBySchema(UUID schemaId) {
        return ResponseEntity.ok(tableService.getTablesBySchema(schemaId)
                .stream()
                .map(apiAbstractMapper::map)
                .collect(Collectors.toList()));
    }

    @Override
    public ResponseEntity<TableDto> saveOrUpdateTable(TableDto tableDto) {
        return ResponseEntity.ok(apiAbstractMapper.mapWithEagerFields(tableService.saveOrUpdateTable(apiAbstractMapper.map(tableDto))));
    }

    @Override
    public ResponseEntity<UUID> deleteTable(UUID id) {
        return ResponseEntity.ok(tableService.delete(id));
    }
}
