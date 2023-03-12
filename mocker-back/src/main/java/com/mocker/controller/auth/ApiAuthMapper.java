package com.mocker.controller.auth;

import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.model.entity.User;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import com.mocker.domain.dto.UserDto;

@Mapper(componentModel = "spring", uses = {ApiAbstractMapper.class})
public interface ApiAuthMapper {
    User map(UserDto userDto);

    @Mapping(target = "groupMembers", ignore = true)
    UserDto map(User user);
}
