package com.mocker.domain.dto;

import java.util.Objects;
import io.swagger.annotations.ApiModel;
import com.fasterxml.jackson.annotation.JsonValue;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

import com.fasterxml.jackson.annotation.JsonCreator;

/**
 * Gender: * MALE - male * FEMALE - female * OTHER - other 
 */
public enum GenderDto {
  
  MALE("MALE"),
  
  FEMALE("FEMALE"),
  
  OTHER("OTHER");

  private String value;

  GenderDto(String value) {
    this.value = value;
  }

  @JsonValue
  public String getValue() {
    return value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  @JsonCreator
  public static GenderDto fromValue(String value) {
    for (GenderDto b : GenderDto.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }
}

