package com.mocker.domain.dto;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.mocker.domain.dto.BaseDto;
import com.mocker.domain.dto.CategoryDto;
import com.mocker.domain.dto.SQLTypeDto;
import com.mocker.domain.dto.SourceDto;
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
 * GENERATE-TYPE table
 */
@ApiModel(description = "GENERATE-TYPE table")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2023-06-06T21:19:09.773925100+07:00[Asia/Saigon]")
public class GenerateTypeDto   {
  @JsonProperty("id")
  private UUID id;

  @JsonProperty("code")
  private String code;

  @JsonProperty("description")
  private String description;

  @JsonProperty("category")
  private CategoryDto category;

  @JsonProperty("sources")
  @Valid
  private List<SourceDto> sources = null;

  @JsonProperty("sqlTypes")
  @Valid
  private List<SQLTypeDto> sqlTypes = null;

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

  public GenerateTypeDto id(UUID id) {
    this.id = id;
    return this;
  }

  /**
   * Generate type id
   * @return id
  */
  @ApiModelProperty(readOnly = true, value = "Generate type id")

  @Valid

  public UUID getId() {
    return id;
  }

  public void setId(UUID id) {
    this.id = id;
  }

  public GenerateTypeDto code(String code) {
    this.code = code;
    return this;
  }

  /**
   * Code of generate type
   * @return code
  */
  @ApiModelProperty(value = "Code of generate type")

@Size(max=255) 
  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public GenerateTypeDto description(String description) {
    this.description = description;
    return this;
  }

  /**
   * Description of generate type
   * @return description
  */
  @ApiModelProperty(value = "Description of generate type")

@Size(max=1000) 
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public GenerateTypeDto category(CategoryDto category) {
    this.category = category;
    return this;
  }

  /**
   * Get category
   * @return category
  */
  @ApiModelProperty(value = "")

  @Valid

  public CategoryDto getCategory() {
    return category;
  }

  public void setCategory(CategoryDto category) {
    this.category = category;
  }

  public GenerateTypeDto sources(List<SourceDto> sources) {
    this.sources = sources;
    return this;
  }

  public GenerateTypeDto addSourcesItem(SourceDto sourcesItem) {
    if (this.sources == null) {
      this.sources = new ArrayList<>();
    }
    this.sources.add(sourcesItem);
    return this;
  }

  /**
   * List sources of generate type
   * @return sources
  */
  @ApiModelProperty(value = "List sources of generate type")

  @Valid

  public List<SourceDto> getSources() {
    return sources;
  }

  public void setSources(List<SourceDto> sources) {
    this.sources = sources;
  }

  public GenerateTypeDto sqlTypes(List<SQLTypeDto> sqlTypes) {
    this.sqlTypes = sqlTypes;
    return this;
  }

  public GenerateTypeDto addSqlTypesItem(SQLTypeDto sqlTypesItem) {
    if (this.sqlTypes == null) {
      this.sqlTypes = new ArrayList<>();
    }
    this.sqlTypes.add(sqlTypesItem);
    return this;
  }

  /**
   * List sql types of generate type
   * @return sqlTypes
  */
  @ApiModelProperty(value = "List sql types of generate type")

  @Valid

  public List<SQLTypeDto> getSqlTypes() {
    return sqlTypes;
  }

  public void setSqlTypes(List<SQLTypeDto> sqlTypes) {
    this.sqlTypes = sqlTypes;
  }

  public GenerateTypeDto createdDate(OffsetDateTime createdDate) {
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

  public GenerateTypeDto createdBy(UUID createdBy) {
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

  public GenerateTypeDto createdByGroup(UUID createdByGroup) {
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

  public GenerateTypeDto modifiedDate(OffsetDateTime modifiedDate) {
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

  public GenerateTypeDto modifiedBy(UUID modifiedBy) {
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

  public GenerateTypeDto modifiedByGroup(UUID modifiedByGroup) {
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

  public GenerateTypeDto version(Integer version) {
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
    GenerateTypeDto generateType = (GenerateTypeDto) o;
    return Objects.equals(this.id, generateType.id) &&
        Objects.equals(this.code, generateType.code) &&
        Objects.equals(this.description, generateType.description) &&
        Objects.equals(this.category, generateType.category) &&
        Objects.equals(this.sources, generateType.sources) &&
        Objects.equals(this.sqlTypes, generateType.sqlTypes) &&
        Objects.equals(this.createdDate, generateType.createdDate) &&
        Objects.equals(this.createdBy, generateType.createdBy) &&
        Objects.equals(this.createdByGroup, generateType.createdByGroup) &&
        Objects.equals(this.modifiedDate, generateType.modifiedDate) &&
        Objects.equals(this.modifiedBy, generateType.modifiedBy) &&
        Objects.equals(this.modifiedByGroup, generateType.modifiedByGroup) &&
        Objects.equals(this.version, generateType.version);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, code, description, category, sources, sqlTypes, createdDate, createdBy, createdByGroup, modifiedDate, modifiedBy, modifiedByGroup, version);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GenerateTypeDto {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    code: ").append(toIndentedString(code)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    category: ").append(toIndentedString(category)).append("\n");
    sb.append("    sources: ").append(toIndentedString(sources)).append("\n");
    sb.append("    sqlTypes: ").append(toIndentedString(sqlTypes)).append("\n");
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

