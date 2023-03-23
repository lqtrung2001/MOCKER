package com.mocker.controller.table;

import com.mocker.api.TableApi;
import com.mocker.domain.dto.TableDto;
import com.mocker.service.TableService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@RestController
@RequiredArgsConstructor
@RequestMapping(path = "/api/v1")
public class TableController implements TableApi {
    private final ApiTableMapper apiTableMapper;
    private final ApiTableMapperDecorator apiTableMapperDecorator;
    private final TableService tableService;

    @Override
    public ResponseEntity<TableDto> getTable(UUID id) {
        return ResponseEntity.ok(apiTableMapperDecorator.mapFetchFields(tableService.getTable(id)));
    }

    @Override
    public ResponseEntity<TableDto> deleteTable(UUID id) {
        return ResponseEntity.ok(apiTableMapper.map(tableService.delete(id)));
    }

    @Override
    public ResponseEntity<TableDto> upsertTable(TableDto tableDto) {
        return ResponseEntity.ok(apiTableMapperDecorator.mapFetchFields(tableService.upsert(apiTableMapper.map(tableDto))));
    }
}
