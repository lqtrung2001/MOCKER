package com.mocker.controller.user;

import com.mocker.controller.mapper.ApiAbstractMapper;
import com.mocker.domain.dto.UserDto;
import com.mocker.domain.model.entity.User;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import java.util.List;

/**
 * @author Luong Quoc Trung
 * @author Do Quoc Viet
 */

@Mapper(componentModel = "spring", uses = {ApiAbstractMapper.class})
public interface ApiUserMapper {
    User map(UserDto userDto);

    @Mapping(target = "groupMembers", ignore = true)
    UserDto map(User user);

    List<UserDto> map(List<User> users);
}
