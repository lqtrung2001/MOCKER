package com.mocker.domain.dto;

import java.util.Objects;
import io.swagger.annotations.ApiModel;
import com.fasterxml.jackson.annotation.JsonValue;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

import com.fasterxml.jackson.annotation.JsonCreator;

/**
 * Mocker relation type: * ONE_TO_ONE - one-to-one relation. * ONE_TO_MANY - one-to-many relation. * MANY_TO_ONE - many-to-one relation. * MANY_TO_MANY - many-to-many relation. 
 */
public enum RelationTypeDto {
  
  ONE_TO_ONE("ONE_TO_ONE"),
  
  ONE_TO_MANY("ONE_TO_MANY"),
  
  MANY_TO_ONE("MANY_TO_ONE"),
  
  MANY_TO_MANY("MANY_TO_MANY");

  private Object value;

  RelationTypeDto(Object value) {
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
  public static RelationTypeDto fromValue(Object value) {
    for (RelationTypeDto b : RelationTypeDto.values()) {
      if (b.value.equals(value)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + value + "'");
  }
}

