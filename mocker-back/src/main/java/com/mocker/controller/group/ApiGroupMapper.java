package com.mocker.controller.group;

import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.GroupDto;
import com.mocker.domain.model.entity.Group;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

@Mapper(componentModel = "spring", uses = {ApiAbstractMapper.class})
public interface ApiGroupMapper {
    Group map(com.mocker.domain.dto.GroupDto groupDto);

    @Mapping(target = "projects", ignore = true)
    @Mapping(target = "groupMembers", ignore = true)
    GroupDto map(Group group);

    @Named("mapWithEagerProjectsAndGroupMembers")
    GroupDto mapWithEagerProjectsAndGroupMembers(Group group);
}
