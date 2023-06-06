package com.mocker.domain.dto;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.mocker.domain.dto.BaseDto;
import com.mocker.domain.dto.GenderDto;
import com.mocker.domain.dto.GroupMemberDto;
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
 * USER table
 */
@ApiModel(description = "USER table")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2023-06-06T21:19:09.773925100+07:00[Asia/Saigon]")
public class UserDto   {
  @JsonProperty("id")
  private UUID id;

  @JsonProperty("username")
  private String username;

  @JsonProperty("password")
  private String password;

  @JsonProperty("name")
  private String name;

  @JsonProperty("bio")
  private String bio;

  @JsonProperty("phone")
  private String phone;

  @JsonProperty("gender")
  private GenderDto gender;

  @JsonProperty("address")
  private String address;

  @JsonProperty("dob")
  @org.springframework.format.annotation.DateTimeFormat(iso = org.springframework.format.annotation.DateTimeFormat.ISO.DATE_TIME)
  private OffsetDateTime dob;

  @JsonProperty("isAccountNonExpired")
  private Boolean isAccountNonExpired;

  @JsonProperty("isAccountNonLocked")
  private Boolean isAccountNonLocked;

  @JsonProperty("isCredentialsNonExpired")
  private Boolean isCredentialsNonExpired;

  @JsonProperty("isEnabled")
  private Boolean isEnabled;

  @JsonProperty("grantedAuthorities")
  private String grantedAuthorities;

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

  public UserDto id(UUID id) {
    this.id = id;
    return this;
  }

  /**
   * User id
   * @return id
  */
  @ApiModelProperty(readOnly = true, value = "User id")

  @Valid

  public UUID getId() {
    return id;
  }

  public void setId(UUID id) {
    this.id = id;
  }

  public UserDto username(String username) {
    this.username = username;
    return this;
  }

  /**
   * Username of user
   * @return username
  */
  @ApiModelProperty(value = "Username of user")

@Size(max=255) @javax.validation.constraints.Email
  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public UserDto password(String password) {
    this.password = password;
    return this;
  }

  /**
   * Password of user
   * @return password
  */
  @ApiModelProperty(value = "Password of user")

@Size(max=255) 
  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public UserDto name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Name of user
   * @return name
  */
  @ApiModelProperty(value = "Name of user")

@Size(max=255) 
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public UserDto bio(String bio) {
    this.bio = bio;
    return this;
  }

  /**
   * Bio of user
   * @return bio
  */
  @ApiModelProperty(value = "Bio of user")

@Size(max=255) 
  public String getBio() {
    return bio;
  }

  public void setBio(String bio) {
    this.bio = bio;
  }

  public UserDto phone(String phone) {
    this.phone = phone;
    return this;
  }

  /**
   * Phone of user
   * @return phone
  */
  @ApiModelProperty(value = "Phone of user")

@Size(max=12) 
  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

  public UserDto gender(GenderDto gender) {
    this.gender = gender;
    return this;
  }

  /**
   * Get gender
   * @return gender
  */
  @ApiModelProperty(value = "")

  @Valid

  public GenderDto getGender() {
    return gender;
  }

  public void setGender(GenderDto gender) {
    this.gender = gender;
  }

  public UserDto address(String address) {
    this.address = address;
    return this;
  }

  /**
   * Address of user
   * @return address
  */
  @ApiModelProperty(value = "Address of user")

@Size(max=255) 
  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public UserDto dob(OffsetDateTime dob) {
    this.dob = dob;
    return this;
  }

  /**
   * dob of user
   * @return dob
  */
  @ApiModelProperty(value = "dob of user")

  @Valid

  public OffsetDateTime getDob() {
    return dob;
  }

  public void setDob(OffsetDateTime dob) {
    this.dob = dob;
  }

  public UserDto isAccountNonExpired(Boolean isAccountNonExpired) {
    this.isAccountNonExpired = isAccountNonExpired;
    return this;
  }

  /**
   * Account non-expired
   * @return isAccountNonExpired
  */
  @ApiModelProperty(value = "Account non-expired")


  public Boolean getIsAccountNonExpired() {
    return isAccountNonExpired;
  }

  public void setIsAccountNonExpired(Boolean isAccountNonExpired) {
    this.isAccountNonExpired = isAccountNonExpired;
  }

  public UserDto isAccountNonLocked(Boolean isAccountNonLocked) {
    this.isAccountNonLocked = isAccountNonLocked;
    return this;
  }

  /**
   * Account non-locked
   * @return isAccountNonLocked
  */
  @ApiModelProperty(value = "Account non-locked")


  public Boolean getIsAccountNonLocked() {
    return isAccountNonLocked;
  }

  public void setIsAccountNonLocked(Boolean isAccountNonLocked) {
    this.isAccountNonLocked = isAccountNonLocked;
  }

  public UserDto isCredentialsNonExpired(Boolean isCredentialsNonExpired) {
    this.isCredentialsNonExpired = isCredentialsNonExpired;
    return this;
  }

  /**
   * Account credentials non-expired
   * @return isCredentialsNonExpired
  */
  @ApiModelProperty(value = "Account credentials non-expired")


  public Boolean getIsCredentialsNonExpired() {
    return isCredentialsNonExpired;
  }

  public void setIsCredentialsNonExpired(Boolean isCredentialsNonExpired) {
    this.isCredentialsNonExpired = isCredentialsNonExpired;
  }

  public UserDto isEnabled(Boolean isEnabled) {
    this.isEnabled = isEnabled;
    return this;
  }

  /**
   * Account enabled
   * @return isEnabled
  */
  @ApiModelProperty(value = "Account enabled")


  public Boolean getIsEnabled() {
    return isEnabled;
  }

  public void setIsEnabled(Boolean isEnabled) {
    this.isEnabled = isEnabled;
  }

  public UserDto grantedAuthorities(String grantedAuthorities) {
    this.grantedAuthorities = grantedAuthorities;
    return this;
  }

  /**
   * List of allowed authorities
   * @return grantedAuthorities
  */
  @ApiModelProperty(value = "List of allowed authorities")


  public String getGrantedAuthorities() {
    return grantedAuthorities;
  }

  public void setGrantedAuthorities(String grantedAuthorities) {
    this.grantedAuthorities = grantedAuthorities;
  }

  public UserDto groupMembers(List<GroupMemberDto> groupMembers) {
    this.groupMembers = groupMembers;
    return this;
  }

  public UserDto addGroupMembersItem(GroupMemberDto groupMembersItem) {
    if (this.groupMembers == null) {
      this.groupMembers = new ArrayList<>();
    }
    this.groupMembers.add(groupMembersItem);
    return this;
  }

  /**
   * List groupMembers of user
   * @return groupMembers
  */
  @ApiModelProperty(value = "List groupMembers of user")

  @Valid

  public List<GroupMemberDto> getGroupMembers() {
    return groupMembers;
  }

  public void setGroupMembers(List<GroupMemberDto> groupMembers) {
    this.groupMembers = groupMembers;
  }

  public UserDto createdDate(OffsetDateTime createdDate) {
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

  public UserDto createdBy(UUID createdBy) {
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

  public UserDto createdByGroup(UUID createdByGroup) {
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

  public UserDto modifiedDate(OffsetDateTime modifiedDate) {
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

  public UserDto modifiedBy(UUID modifiedBy) {
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

  public UserDto modifiedByGroup(UUID modifiedByGroup) {
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

  public UserDto version(Integer version) {
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
    UserDto user = (UserDto) o;
    return Objects.equals(this.id, user.id) &&
        Objects.equals(this.username, user.username) &&
        Objects.equals(this.password, user.password) &&
        Objects.equals(this.name, user.name) &&
        Objects.equals(this.bio, user.bio) &&
        Objects.equals(this.phone, user.phone) &&
        Objects.equals(this.gender, user.gender) &&
        Objects.equals(this.address, user.address) &&
        Objects.equals(this.dob, user.dob) &&
        Objects.equals(this.isAccountNonExpired, user.isAccountNonExpired) &&
        Objects.equals(this.isAccountNonLocked, user.isAccountNonLocked) &&
        Objects.equals(this.isCredentialsNonExpired, user.isCredentialsNonExpired) &&
        Objects.equals(this.isEnabled, user.isEnabled) &&
        Objects.equals(this.grantedAuthorities, user.grantedAuthorities) &&
        Objects.equals(this.groupMembers, user.groupMembers) &&
        Objects.equals(this.createdDate, user.createdDate) &&
        Objects.equals(this.createdBy, user.createdBy) &&
        Objects.equals(this.createdByGroup, user.createdByGroup) &&
        Objects.equals(this.modifiedDate, user.modifiedDate) &&
        Objects.equals(this.modifiedBy, user.modifiedBy) &&
        Objects.equals(this.modifiedByGroup, user.modifiedByGroup) &&
        Objects.equals(this.version, user.version);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, username, password, name, bio, phone, gender, address, dob, isAccountNonExpired, isAccountNonLocked, isCredentialsNonExpired, isEnabled, grantedAuthorities, groupMembers, createdDate, createdBy, createdByGroup, modifiedDate, modifiedBy, modifiedByGroup, version);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UserDto {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    username: ").append(toIndentedString(username)).append("\n");
    sb.append("    password: ").append(toIndentedString(password)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    bio: ").append(toIndentedString(bio)).append("\n");
    sb.append("    phone: ").append(toIndentedString(phone)).append("\n");
    sb.append("    gender: ").append(toIndentedString(gender)).append("\n");
    sb.append("    address: ").append(toIndentedString(address)).append("\n");
    sb.append("    dob: ").append(toIndentedString(dob)).append("\n");
    sb.append("    isAccountNonExpired: ").append(toIndentedString(isAccountNonExpired)).append("\n");
    sb.append("    isAccountNonLocked: ").append(toIndentedString(isAccountNonLocked)).append("\n");
    sb.append("    isCredentialsNonExpired: ").append(toIndentedString(isCredentialsNonExpired)).append("\n");
    sb.append("    isEnabled: ").append(toIndentedString(isEnabled)).append("\n");
    sb.append("    grantedAuthorities: ").append(toIndentedString(grantedAuthorities)).append("\n");
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

