package com.mocker.controller.groupMember;

import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.GroupMemberPKDto;
import com.mocker.domain.dto.ProjectDto;
import com.mocker.domain.model.entity.Project;
import com.mocker.domain.model.entity.composite_key.GroupMemberPK;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring", uses = {ApiAbstractMapper.class})
public interface ApiGroupMemberMapper {
    GroupMemberPKDto map(GroupMemberPK groupMemberPK);

    GroupMemberPK map(GroupMemberPKDto groupMemberPKDto);

    Project map(ProjectDto projectDto);

    @Mapping(target = "schemas", ignore = true)
    ProjectDto map(Project project);
}
