package com.mocker.domain.dto;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.UUID;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * GROUP-MEMBER primary key table
 */
@ApiModel(description = "GROUP-MEMBER primary key table")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2023-04-30T14:53:10.406404500+07:00[Asia/Saigon]")
public class GroupMemberPKDto   {
  @JsonProperty("groupId")
  private UUID groupId;

  @JsonProperty("userId")
  private UUID userId;

  public GroupMemberPKDto groupId(UUID groupId) {
    this.groupId = groupId;
    return this;
  }

  /**
   * Group id of group access
   * @return groupId
  */
  @ApiModelProperty(readOnly = true, value = "Group id of group access")

  @Valid

  public UUID getGroupId() {
    return groupId;
  }

  public void setGroupId(UUID groupId) {
    this.groupId = groupId;
  }

  public GroupMemberPKDto userId(UUID userId) {
    this.userId = userId;
    return this;
  }

  /**
   * User id of group access
   * @return userId
  */
  @ApiModelProperty(readOnly = true, value = "User id of group access")

  @Valid

  public UUID getUserId() {
    return userId;
  }

  public void setUserId(UUID userId) {
    this.userId = userId;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GroupMemberPKDto groupMemberPK = (GroupMemberPKDto) o;
    return Objects.equals(this.groupId, groupMemberPK.groupId) &&
        Objects.equals(this.userId, groupMemberPK.userId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(groupId, userId);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GroupMemberPKDto {\n");
    
    sb.append("    groupId: ").append(toIndentedString(groupId)).append("\n");
    sb.append("    userId: ").append(toIndentedString(userId)).append("\n");
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

