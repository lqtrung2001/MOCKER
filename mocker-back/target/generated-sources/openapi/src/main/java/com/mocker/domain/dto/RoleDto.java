package com.mocker.domain.dto;

import java.util.Objects;
import io.swagger.annotations.ApiModel;
import com.fasterxml.jackson.annotation.JsonValue;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

import com.fasterxml.jackson.annotation.JsonCreator;

/**
 * Mocker role: * GROUP_ADMIN - group admin. * GROUP_ASSOCIATE - group associate. * USER - user. * ADMIN - admin. 
 */
public enum RoleDto {
  
  GROUP_ADMIN("GROUP_ADMIN"),
  
  GROUP_ASSOCIATE("GROUP_ASSOCIATE"),
  
  USER("USER"),
  
  ADMIN("ADMIN");

  private Object value;

  RoleDto(Object value) {
    this.value = value;
  }

  @JsonValue
  public Object getValue() {
    return value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  @JsonCreator
  public static RoleDto fromValue(Object value) {
    for (RoleDto b : RoleDto.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }
}

