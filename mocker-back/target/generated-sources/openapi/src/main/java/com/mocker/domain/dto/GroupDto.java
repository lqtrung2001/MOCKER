package com.mocker.domain.dto;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.mocker.domain.dto.BaseDto;
import com.mocker.domain.dto.GroupMemberDto;
import com.mocker.domain.dto.ProjectDto;
import com.mocker.domain.dto.UserDto;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * GROUP table
 */
@ApiModel(description = "GROUP table")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2023-06-06T21:19:09.773925100+07:00[Asia/Saigon]")
public class GroupDto   {
  @JsonProperty("id")
  private UUID id;

  @JsonProperty("name")
  private String name;

  @JsonProperty("description")
  private String description;

  @JsonProperty("users")
  @Valid
  private List<UserDto> users = null;

  @JsonProperty("projects")
  @Valid
  private List<ProjectDto> projects = null;

  @JsonProperty("groupMembers")
  @Valid
  private List<GroupMemberDto> groupMembers = null;

  @JsonProperty("createdDate")
  @org.springframework.format.annotation.DateTimeFormat(iso = org.springframework.format.annotation.DateTimeFormat.ISO.DATE_TIME)
  private OffsetDateTime createdDate;

  @JsonProperty("createdBy")
  private UUID createdBy;

  @JsonProperty("createdByGroup")
  private UUID createdByGroup;

  @JsonProperty("modifiedDate")
  @org.springframework.format.annotation.DateTimeFormat(iso = org.springframework.format.annotation.DateTimeFormat.ISO.DATE_TIME)
  private OffsetDateTime modifiedDate;

  @JsonProperty("modifiedBy")
  private UUID modifiedBy;

  @JsonProperty("modifiedByGroup")
  private UUID modifiedByGroup;

  @JsonProperty("version")
  private Integer version;

  public GroupDto id(UUID id) {
    this.id = id;
    return this;
  }

  /**
   * Group id
   * @return id
  */
  @ApiModelProperty(readOnly = true, value = "Group id")

  @Valid

  public UUID getId() {
    return id;
  }

  public void setId(UUID id) {
    this.id = id;
  }

  public GroupDto name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Name of group
   * @return name
  */
  @ApiModelProperty(value = "Name of group")

@Size(max=255) 
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public GroupDto description(String description) {
    this.description = description;
    return this;
  }

  /**
   * Description of group
   * @return description
  */
  @ApiModelProperty(value = "Description of group")

@Size(max=1000) 
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public GroupDto users(List<UserDto> users) {
    this.users = users;
    return this;
  }

  public GroupDto addUsersItem(UserDto usersItem) {
    if (this.users == null) {
      this.users = new ArrayList<>();
    }
    this.users.add(usersItem);
    return this;
  }

  /**
   * List users of group
   * @return users
  */
  @ApiModelProperty(value = "List users of group")

  @Valid

  public List<UserDto> getUsers() {
    return users;
  }

  public void setUsers(List<UserDto> users) {
    this.users = users;
  }

  public GroupDto projects(List<ProjectDto> projects) {
    this.projects = projects;
    return this;
  }

  public GroupDto addProjectsItem(ProjectDto projectsItem) {
    if (this.projects == null) {
      this.projects = new ArrayList<>();
    }
    this.projects.add(projectsItem);
    return this;
  }

  /**
   * List projects of group
   * @return projects
  */
  @ApiModelProperty(value = "List projects of group")

  @Valid

  public List<ProjectDto> getProjects() {
    return projects;
  }

  public void setProjects(List<ProjectDto> projects) {
    this.projects = projects;
  }

  public GroupDto groupMembers(List<GroupMemberDto> groupMembers) {
    this.groupMembers = groupMembers;
    return this;
  }

  public GroupDto addGroupMembersItem(GroupMemberDto groupMembersItem) {
    if (this.groupMembers == null) {
      this.groupMembers = new ArrayList<>();
    }
    this.groupMembers.add(groupMembersItem);
    return this;
  }

  /**
   * List groupMembers of group
   * @return groupMembers
  */
  @ApiModelProperty(value = "List groupMembers of group")

  @Valid

  public List<GroupMemberDto> getGroupMembers() {
    return groupMembers;
  }

  public void setGroupMembers(List<GroupMemberDto> groupMembers) {
    this.groupMembers = groupMembers;
  }

  public GroupDto createdDate(OffsetDateTime createdDate) {
    this.createdDate = createdDate;
    return this;
  }

  /**
   * Audit created date
   * @return createdDate
  */
  @ApiModelProperty(value = "Audit created date")

  @Valid

  public OffsetDateTime getCreatedDate() {
    return createdDate;
  }

  public void setCreatedDate(OffsetDateTime createdDate) {
    this.createdDate = createdDate;
  }

  public GroupDto createdBy(UUID createdBy) {
    this.createdBy = createdBy;
    return this;
  }

  /**
   * Audit created by
   * @return createdBy
  */
  @ApiModelProperty(readOnly = true, value = "Audit created by")

  @Valid

  public UUID getCreatedBy() {
    return createdBy;
  }

  public void setCreatedBy(UUID createdBy) {
    this.createdBy = createdBy;
  }

  public GroupDto createdByGroup(UUID createdByGroup) {
    this.createdByGroup = createdByGroup;
    return this;
  }

  /**
   * Audit created by group
   * @return createdByGroup
  */
  @ApiModelProperty(readOnly = true, value = "Audit created by group")

  @Valid

  public UUID getCreatedByGroup() {
    return createdByGroup;
  }

  public void setCreatedByGroup(UUID createdByGroup) {
    this.createdByGroup = createdByGroup;
  }

  public GroupDto modifiedDate(OffsetDateTime modifiedDate) {
    this.modifiedDate = modifiedDate;
    return this;
  }

  /**
   * Audit modified date
   * @return modifiedDate
  */
  @ApiModelProperty(value = "Audit modified date")

  @Valid

  public OffsetDateTime getModifiedDate() {
    return modifiedDate;
  }

  public void setModifiedDate(OffsetDateTime modifiedDate) {
    this.modifiedDate = modifiedDate;
  }

  public GroupDto modifiedBy(UUID modifiedBy) {
    this.modifiedBy = modifiedBy;
    return this;
  }

  /**
   * Audit modified by
   * @return modifiedBy
  */
  @ApiModelProperty(readOnly = true, value = "Audit modified by")

  @Valid

  public UUID getModifiedBy() {
    return modifiedBy;
  }

  public void setModifiedBy(UUID modifiedBy) {
    this.modifiedBy = modifiedBy;
  }

  public GroupDto modifiedByGroup(UUID modifiedByGroup) {
    this.modifiedByGroup = modifiedByGroup;
    return this;
  }

  /**
   * Audit modified by group
   * @return modifiedByGroup
  */
  @ApiModelProperty(readOnly = true, value = "Audit modified by group")

  @Valid

  public UUID getModifiedByGroup() {
    return modifiedByGroup;
  }

  public void setModifiedByGroup(UUID modifiedByGroup) {
    this.modifiedByGroup = modifiedByGroup;
  }

  public GroupDto version(Integer version) {
    this.version = version;
    return this;
  }

  /**
   * Audit version
   * @return version
  */
  @ApiModelProperty(readOnly = true, value = "Audit version")


  public Integer getVersion() {
    return version;
  }

  public void setVersion(Integer version) {
    this.version = version;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GroupDto group = (GroupDto) o;
    return Objects.equals(this.id, group.id) &&
        Objects.equals(this.name, group.name) &&
        Objects.equals(this.description, group.description) &&
        Objects.equals(this.users, group.users) &&
        Objects.equals(this.projects, group.projects) &&
        Objects.equals(this.groupMembers, group.groupMembers) &&
        Objects.equals(this.createdDate, group.createdDate) &&
        Objects.equals(this.createdBy, group.createdBy) &&
        Objects.equals(this.createdByGroup, group.createdByGroup) &&
        Objects.equals(this.modifiedDate, group.modifiedDate) &&
        Objects.equals(this.modifiedBy, group.modifiedBy) &&
        Objects.equals(this.modifiedByGroup, group.modifiedByGroup) &&
        Objects.equals(this.version, group.version);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, name, description, users, projects, groupMembers, createdDate, createdBy, createdByGroup, modifiedDate, modifiedBy, modifiedByGroup, version);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GroupDto {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    users: ").append(toIndentedString(users)).append("\n");
    sb.append("    projects: ").append(toIndentedString(projects)).append("\n");
    sb.append("    groupMembers: ").append(toIndentedString(groupMembers)).append("\n");
    sb.append("    createdDate: ").append(toIndentedString(createdDate)).append("\n");
    sb.append("    createdBy: ").append(toIndentedString(createdBy)).append("\n");
    sb.append("    createdByGroup: ").append(toIndentedString(createdByGroup)).append("\n");
    sb.append("    modifiedDate: ").append(toIndentedString(modifiedDate)).append("\n");
    sb.append("    modifiedBy: ").append(toIndentedString(modifiedBy)).append("\n");
    sb.append("    modifiedByGroup: ").append(toIndentedString(modifiedByGroup)).append("\n");
    sb.append("    version: ").append(toIndentedString(version)).append("\n");
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

