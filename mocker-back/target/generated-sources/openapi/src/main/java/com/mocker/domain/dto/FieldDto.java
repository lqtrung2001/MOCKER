package com.mocker.domain.dto;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.mocker.domain.dto.BaseDto;
import com.mocker.domain.dto.GenerateTypeDto;
import com.mocker.domain.dto.OptionDto;
import com.mocker.domain.dto.SQLTypeDto;
import com.mocker.domain.dto.TableDto;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.time.OffsetDateTime;
import java.util.UUID;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * FIELD table
 */
@ApiModel(description = "FIELD table")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2023-06-06T21:19:09.773925100+07:00[Asia/Saigon]")
public class FieldDto   {
  @JsonProperty("id")
  private UUID id;

  @JsonProperty("name")
  private String name;

  @JsonProperty("sqlType")
  private SQLTypeDto sqlType;

  @JsonProperty("generateType")
  private GenerateTypeDto generateType;

  @JsonProperty("option")
  private OptionDto option;

  @JsonProperty("table")
  private TableDto table;

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

  public FieldDto id(UUID id) {
    this.id = id;
    return this;
  }

  /**
   * Field id
   * @return id
  */
  @ApiModelProperty(readOnly = true, value = "Field id")

  @Valid

  public UUID getId() {
    return id;
  }

  public void setId(UUID id) {
    this.id = id;
  }

  public FieldDto name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Name of field
   * @return name
  */
  @ApiModelProperty(value = "Name of field")

@Size(max=255) 
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public FieldDto sqlType(SQLTypeDto sqlType) {
    this.sqlType = sqlType;
    return this;
  }

  /**
   * Get sqlType
   * @return sqlType
  */
  @ApiModelProperty(value = "")

  @Valid

  public SQLTypeDto getSqlType() {
    return sqlType;
  }

  public void setSqlType(SQLTypeDto sqlType) {
    this.sqlType = sqlType;
  }

  public FieldDto generateType(GenerateTypeDto generateType) {
    this.generateType = generateType;
    return this;
  }

  /**
   * Get generateType
   * @return generateType
  */
  @ApiModelProperty(value = "")

  @Valid

  public GenerateTypeDto getGenerateType() {
    return generateType;
  }

  public void setGenerateType(GenerateTypeDto generateType) {
    this.generateType = generateType;
  }

  public FieldDto option(OptionDto option) {
    this.option = option;
    return this;
  }

  /**
   * Get option
   * @return option
  */
  @ApiModelProperty(value = "")

  @Valid

  public OptionDto getOption() {
    return option;
  }

  public void setOption(OptionDto option) {
    this.option = option;
  }

  public FieldDto table(TableDto table) {
    this.table = table;
    return this;
  }

  /**
   * Get table
   * @return table
  */
  @ApiModelProperty(value = "")

  @Valid

  public TableDto getTable() {
    return table;
  }

  public void setTable(TableDto table) {
    this.table = table;
  }

  public FieldDto createdDate(OffsetDateTime createdDate) {
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

  public FieldDto createdBy(UUID createdBy) {
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

  public FieldDto createdByGroup(UUID createdByGroup) {
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

  public FieldDto modifiedDate(OffsetDateTime modifiedDate) {
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

  public FieldDto modifiedBy(UUID modifiedBy) {
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

  public FieldDto modifiedByGroup(UUID modifiedByGroup) {
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

  public FieldDto version(Integer version) {
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
    FieldDto field = (FieldDto) o;
    return Objects.equals(this.id, field.id) &&
        Objects.equals(this.name, field.name) &&
        Objects.equals(this.sqlType, field.sqlType) &&
        Objects.equals(this.generateType, field.generateType) &&
        Objects.equals(this.option, field.option) &&
        Objects.equals(this.table, field.table) &&
        Objects.equals(this.createdDate, field.createdDate) &&
        Objects.equals(this.createdBy, field.createdBy) &&
        Objects.equals(this.createdByGroup, field.createdByGroup) &&
        Objects.equals(this.modifiedDate, field.modifiedDate) &&
        Objects.equals(this.modifiedBy, field.modifiedBy) &&
        Objects.equals(this.modifiedByGroup, field.modifiedByGroup) &&
        Objects.equals(this.version, field.version);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, name, sqlType, generateType, option, table, createdDate, createdBy, createdByGroup, modifiedDate, modifiedBy, modifiedByGroup, version);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FieldDto {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    sqlType: ").append(toIndentedString(sqlType)).append("\n");
    sb.append("    generateType: ").append(toIndentedString(generateType)).append("\n");
    sb.append("    option: ").append(toIndentedString(option)).append("\n");
    sb.append("    table: ").append(toIndentedString(table)).append("\n");
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

