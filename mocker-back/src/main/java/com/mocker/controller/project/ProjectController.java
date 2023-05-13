package com.mocker.controller.project;

import com.mocker.api.ProjectApi;
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
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@RestController
@AllArgsConstructor
@RequestMapping(path = "/api/v1")
public class ProjectController implements ProjectApi {
    private final ApiProjectMapper apiProjectMapper;
    private final ApiProjectMapperDecorator apiProjectMapperDecorator;
    private final ProjectService projectService;

    @Override
    public ResponseEntity<ProjectDto> getProject(UUID id) {
        return ResponseEntity.ok(apiProjectMapperDecorator.mapFetchSchemas(projectService.getProject(id)));
    }

    @Override
    public ResponseEntity<List<ProjectDto>> getProjects() {
        return ResponseEntity.ok(projectService.getProjects()
                .stream()
                .map(apiProjectMapper::map)
                .collect(Collectors.toList()));
    }

    @Override
    public ResponseEntity<ProjectDto> upsertProject(ProjectDto projectDto) {
        return ResponseEntity.ok(apiProjectMapper.map(projectService.upsert(apiProjectMapper.map(projectDto))));

    }

    @Override
    public ResponseEntity<ProjectDto> deleteProject(UUID id) {
        return ResponseEntity.ok(apiProjectMapper.map(projectService.delete(id)));
    }
}
