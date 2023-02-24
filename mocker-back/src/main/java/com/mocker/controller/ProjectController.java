package com.mocker.controller;

import com.mocker.api.ProjectApi;
import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.ProjectDto;
import com.mocker.service.ProjectService;
import lombok.AllArgsConstructor;
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
@AllArgsConstructor
@RequestMapping(path = "/api/v1")
public class ProjectController implements ProjectApi {

    private final ApiAbstractMapper apiAbstractMapper;
    private final ProjectService projectService;

    @Override
    public ResponseEntity<ProjectDto> getProject(UUID id) {
        return ResponseEntity.ok(apiAbstractMapper.map(projectService.getProject(id)));
    }

    @Override
    public ResponseEntity<List<ProjectDto>> getProjects() {
        return ResponseEntity.ok(projectService.getProjects()
                .stream()
                .map(apiAbstractMapper::map)
                .collect(Collectors.toList()));
    }

    @Override
    public ResponseEntity<UUID> saveOrUpdate(ProjectDto projectDto) {
        return ResponseEntity.ok(projectService.saveOrUpdate(apiAbstractMapper.map(projectDto)));
    }

    @Override
    public ResponseEntity<UUID> deleteProject(UUID id) {
        return ResponseEntity.ok(projectService.delete(id));
    }
}
