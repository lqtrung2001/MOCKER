package com.mocker.domain.dto;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.mocker.domain.dto.BaseDto;
import com.mocker.domain.dto.FieldDto;
import com.mocker.domain.dto.SchemaDto;
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
 * TABLE table
 */
@ApiModel(description = "TABLE table")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2023-06-06T21:19:09.773925100+07:00[Asia/Saigon]")
public class TableDto   {
  @JsonProperty("id")
  private UUID id;

  @JsonProperty("name")
  private String name;

  @JsonProperty("row")
  private Integer row = 0;

  @JsonProperty("description")
  private String description;

  @JsonProperty("schema")
  private SchemaDto schema;

  @JsonProperty("fields")
  @Valid
  private List<FieldDto> fields = null;

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

  public TableDto id(UUID id) {
    this.id = id;
    return this;
  }

  /**
   * Table id
   * @return id
  */
  @ApiModelProperty(readOnly = true, value = "Table id")

  @Valid

  public UUID getId() {
    return id;
  }

  public void setId(UUID id) {
    this.id = id;
  }

  public TableDto name(String name) {
    this.name = name;
    return this;
  }

  /**
   * Name of table
   * @return name
  */
  @ApiModelProperty(value = "Name of table")

@Size(max=255) 
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public TableDto row(Integer row) {
    this.row = row;
    return this;
  }

  /**
   * row number generated
   * minimum: 0
   * maximum: 1000
   * @return row
  */
  @ApiModelProperty(value = "row number generated")

@Min(0) @Max(1000) 
  public Integer getRow() {
    return row;
  }

  public void setRow(Integer row) {
    this.row = row;
  }

  public TableDto description(String description) {
    this.description = description;
    return this;
  }

  /**
   * Description of table
   * @return description
  */
  @ApiModelProperty(value = "Description of table")

@Size(max=1000) 
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public TableDto schema(SchemaDto schema) {
    this.schema = schema;
    return this;
  }

  /**
   * Get schema
   * @return schema
  */
  @ApiModelProperty(value = "")

  @Valid

  public SchemaDto getSchema() {
    return schema;
  }

  public void setSchema(SchemaDto schema) {
    this.schema = schema;
  }

  public TableDto fields(List<FieldDto> fields) {
    this.fields = fields;
    return this;
  }

  public TableDto addFieldsItem(FieldDto fieldsItem) {
    if (this.fields == null) {
      this.fields = new ArrayList<>();
    }
    this.fields.add(fieldsItem);
    return this;
  }

  /**
   * List fields of table
   * @return fields
  */
  @ApiModelProperty(value = "List fields of table")

  @Valid

  public List<FieldDto> getFields() {
    return fields;
  }

  public void setFields(List<FieldDto> fields) {
    this.fields = fields;
  }

  public TableDto createdDate(OffsetDateTime createdDate) {
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

  public TableDto createdBy(UUID createdBy) {
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

  public TableDto createdByGroup(UUID createdByGroup) {
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

  public TableDto modifiedDate(OffsetDateTime modifiedDate) {
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

  public TableDto modifiedBy(UUID modifiedBy) {
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

  public TableDto modifiedByGroup(UUID modifiedByGroup) {
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

  public TableDto version(Integer version) {
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
    TableDto table = (TableDto) o;
    return Objects.equals(this.id, table.id) &&
        Objects.equals(this.name, table.name) &&
        Objects.equals(this.row, table.row) &&
        Objects.equals(this.description, table.description) &&
        Objects.equals(this.schema, table.schema) &&
        Objects.equals(this.fields, table.fields) &&
        Objects.equals(this.createdDate, table.createdDate) &&
        Objects.equals(this.createdBy, table.createdBy) &&
        Objects.equals(this.createdByGroup, table.createdByGroup) &&
        Objects.equals(this.modifiedDate, table.modifiedDate) &&
        Objects.equals(this.modifiedBy, table.modifiedBy) &&
        Objects.equals(this.modifiedByGroup, table.modifiedByGroup) &&
        Objects.equals(this.version, table.version);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, name, row, description, schema, fields, createdDate, createdBy, createdByGroup, modifiedDate, modifiedBy, modifiedByGroup, version);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class TableDto {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    row: ").append(toIndentedString(row)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    schema: ").append(toIndentedString(schema)).append("\n");
    sb.append("    fields: ").append(toIndentedString(fields)).append("\n");
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

