package com.mocker.domain.dto;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * Schema for error response body
 */
@ApiModel(description = "Schema for error response body")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2023-06-06T21:19:09.773925100+07:00[Asia/Saigon]")
public class ErrorDto   {
  @JsonProperty("timestamp")
  private String timestamp;

  @JsonProperty("status")
  private Integer status;

  @JsonProperty("error")
  private String error;

  @JsonProperty("message")
  private String message;

  @JsonProperty("path")
  private String path;

  /**
   * Ged error code: * UNEXPECTED_EXCEPTION - unexpected error. * AUTHENTICATION_EXCEPTION - user is not authenticated. * PERMISSION_EXCEPTION - user does not have permission to perform the action. * BAD_REQUEST - the request is wrong. * NOT_FOUND - resource not found. * CONFLICT - business error. * INVALID_STATUS - resource status is not valid. * INVALID_PROPERTIES - the properties is not valid. * ACTION_NOT_ALLOWED - the action not allowed. 
   */
  public enum CodeEnum {
    UNEXPECTED_EXCEPTION("UNEXPECTED_EXCEPTION"),
    
    AUTHENTICATION_EXCEPTION("AUTHENTICATION_EXCEPTION"),
    
    PERMISSION_EXCEPTION("PERMISSION_EXCEPTION"),
    
    BAD_REQUEST("BAD_REQUEST"),
    
    NOT_FOUND("NOT_FOUND"),
    
    CONFLICT("CONFLICT"),
    
    INVALID_STATUS("INVALID_STATUS"),
    
    INVALID_PROPERTIES("INVALID_PROPERTIES"),
    
    ACTION_NOT_ALLOWED("ACTION_NOT_ALLOWED");

    private String value;

    CodeEnum(String value) {
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
    public static CodeEnum fromValue(String value) {
      for (CodeEnum b : CodeEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
  }

  @JsonProperty("code")
  private CodeEnum code;

  @JsonProperty("additionalMessage")
  private String additionalMessage;

  public ErrorDto timestamp(String timestamp) {
    this.timestamp = timestamp;
    return this;
  }

  /**
   * Get timestamp
   * @return timestamp
  */
  @ApiModelProperty(value = "")


  public String getTimestamp() {
    return timestamp;
  }

  public void setTimestamp(String timestamp) {
    this.timestamp = timestamp;
  }

  public ErrorDto status(Integer status) {
    this.status = status;
    return this;
  }

  /**
   * Get status
   * @return status
  */
  @ApiModelProperty(value = "")


  public Integer getStatus() {
    return status;
  }

  public void setStatus(Integer status) {
    this.status = status;
  }

  public ErrorDto error(String error) {
    this.error = error;
    return this;
  }

  /**
   * Get error
   * @return error
  */
  @ApiModelProperty(value = "")


  public String getError() {
    return error;
  }

  public void setError(String error) {
    this.error = error;
  }

  public ErrorDto message(String message) {
    this.message = message;
    return this;
  }

  /**
   * Get message
   * @return message
  */
  @ApiModelProperty(value = "")


  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message;
  }

  public ErrorDto path(String path) {
    this.path = path;
    return this;
  }

  /**
   * Get path
   * @return path
  */
  @ApiModelProperty(value = "")


  public String getPath() {
    return path;
  }

  public void setPath(String path) {
    this.path = path;
  }

  public ErrorDto code(CodeEnum code) {
    this.code = code;
    return this;
  }

  /**
   * Ged error code: * UNEXPECTED_EXCEPTION - unexpected error. * AUTHENTICATION_EXCEPTION - user is not authenticated. * PERMISSION_EXCEPTION - user does not have permission to perform the action. * BAD_REQUEST - the request is wrong. * NOT_FOUND - resource not found. * CONFLICT - business error. * INVALID_STATUS - resource status is not valid. * INVALID_PROPERTIES - the properties is not valid. * ACTION_NOT_ALLOWED - the action not allowed. 
   * @return code
  */
  @ApiModelProperty(value = "Ged error code: * UNEXPECTED_EXCEPTION - unexpected error. * AUTHENTICATION_EXCEPTION - user is not authenticated. * PERMISSION_EXCEPTION - user does not have permission to perform the action. * BAD_REQUEST - the request is wrong. * NOT_FOUND - resource not found. * CONFLICT - business error. * INVALID_STATUS - resource status is not valid. * INVALID_PROPERTIES - the properties is not valid. * ACTION_NOT_ALLOWED - the action not allowed. ")


  public CodeEnum getCode() {
    return code;
  }

  public void setCode(CodeEnum code) {
    this.code = code;
  }

  public ErrorDto additionalMessage(String additionalMessage) {
    this.additionalMessage = additionalMessage;
    return this;
  }

  /**
   * Get additionalMessage
   * @return additionalMessage
  */
  @ApiModelProperty(value = "")


  public String getAdditionalMessage() {
    return additionalMessage;
  }

  public void setAdditionalMessage(String additionalMessage) {
    this.additionalMessage = additionalMessage;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ErrorDto error = (ErrorDto) o;
    return Objects.equals(this.timestamp, error.timestamp) &&
        Objects.equals(this.status, error.status) &&
        Objects.equals(this.error, error.error) &&
        Objects.equals(this.message, error.message) &&
        Objects.equals(this.path, error.path) &&
        Objects.equals(this.code, error.code) &&
        Objects.equals(this.additionalMessage, error.additionalMessage);
  }

  @Override
  public int hashCode() {
    return Objects.hash(timestamp, status, error, message, path, code, additionalMessage);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ErrorDto {\n");
    
    sb.append("    timestamp: ").append(toIndentedString(timestamp)).append("\n");
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
    sb.append("    error: ").append(toIndentedString(error)).append("\n");
    sb.append("    message: ").append(toIndentedString(message)).append("\n");
    sb.append("    path: ").append(toIndentedString(path)).append("\n");
    sb.append("    code: ").append(toIndentedString(code)).append("\n");
    sb.append("    additionalMessage: ").append(toIndentedString(additionalMessage)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

