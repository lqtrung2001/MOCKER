package com.mocker.controller.group;

import com.mocker.controller.mapper.ApiAbstractMapperDecorator;
import com.mocker.domain.dto.GroupDto;
import com.mocker.domain.model.entity.Group;
import org.mapstruct.Mapper;

/**
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {ApiAbstractMapperDecorator.class})
public interface ApiGroupMapperDecorator {

    GroupDto mapFetchProjectsAndGroupMembers(Group group);

}
