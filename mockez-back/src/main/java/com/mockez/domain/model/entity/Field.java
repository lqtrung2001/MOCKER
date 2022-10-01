package com.mockez.domain.model.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ForeignKey;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import static lombok.AccessLevel.NONE;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
@Table(uniqueConstraints = {
        @UniqueConstraint(name = "field_name_unique_constraint", columnNames = "name")
})
public class Field extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    private String id;

    @Column(nullable = false)
    private String name;

    @ManyToOne
    @JoinColumn(name = "sql_type_id", nullable = false, foreignKey = @ForeignKey(name = "field_sql_type_id_fk"))
    private SQLType SQLType;

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "field_generate_type_id_fk"))
    private GenerateType generateType;

    @PrimaryKeyJoinColumn
    @OneToOne(mappedBy = "field")
    private Option option;

}
