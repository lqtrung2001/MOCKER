package com.mocker.domain.dto;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * The request of change password api
 */
@ApiModel(description = "The request of change password api")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2023-06-06T21:19:09.773925100+07:00[Asia/Saigon]")
public class ChangePasswordDto   {
  @JsonProperty("oldPassword")
  private String oldPassword;

  @JsonProperty("newPassword")
  private String newPassword;

  public ChangePasswordDto oldPassword(String oldPassword) {
    this.oldPassword = oldPassword;
    return this;
  }

  /**
   * The old password
   * @return oldPassword
  */
  @ApiModelProperty(value = "The old password")


  public String getOldPassword() {
    return oldPassword;
  }

  public void setOldPassword(String oldPassword) {
    this.oldPassword = oldPassword;
  }

  public ChangePasswordDto newPassword(String newPassword) {
    this.newPassword = newPassword;
    return this;
  }

  /**
   * The new password
   * @return newPassword
  */
  @ApiModelProperty(value = "The new password")


  public String getNewPassword() {
    return newPassword;
  }

  public void setNewPassword(String newPassword) {
    this.newPassword = newPassword;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ChangePasswordDto changePassword = (ChangePasswordDto) o;
    return Objects.equals(this.oldPassword, changePassword.oldPassword) &&
        Objects.equals(this.newPassword, changePassword.newPassword);
  }

  @Override
  public int hashCode() {
    return Objects.hash(oldPassword, newPassword);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ChangePasswordDto {\n");
    
    sb.append("    oldPassword: ").append(toIndentedString(oldPassword)).append("\n");
    sb.append("    newPassword: ").append(toIndentedString(newPassword)).append("\n");
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

