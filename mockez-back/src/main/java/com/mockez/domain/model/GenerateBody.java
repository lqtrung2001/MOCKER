package com.mockez.domain.model;

import com.mockez.domain.model.entity.Field;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.util.List;

@Getter
@Setter
@Builder
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class GenerateBody {
    private Integer row;
    private String format;
    private String tableName;
    private Boolean isIncludeCreateTable;
    private List<Field> fields;
}