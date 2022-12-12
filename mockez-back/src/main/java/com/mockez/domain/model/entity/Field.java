package com.mockez.domain.model.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.SuperBuilder;

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
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
@SuperBuilder(toBuilder = true)
@Table(uniqueConstraints = {
        @UniqueConstraint(name = "FIELD_NAME_UNIQUE_CONSTRAINT", columnNames = "NAME")
}, name = "FIELD")
public class Field extends Base {

    @Id
    @Column(name = "ID", updatable = false)
    private UUID id;

    @Column(name = "NAME", nullable = false)
    private String name;

    @ManyToOne
    @ToString.Exclude
    @JoinColumn(name = "SQL_TYPE_ID", nullable = false, foreignKey = @ForeignKey(name = "FIELD_SQL_TYPE_ID_FK"))
    private SQLType sqlType = SQLType.builder().build();

    @ManyToOne
    @ToString.Exclude
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "FIELD_GENERATE_TYPE_ID_FK"))
    private GenerateType generateType = GenerateType.builder().build();

    @PrimaryKeyJoinColumn
    @OneToOne(mappedBy = "field")
    private Option option = Option.builder().build();

    @ManyToOne
    @ToString.Exclude
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "FIELD_TABLE_ID_FK"))
    private com.mockez.domain.model.entity.Table table = com.mockez.domain.model.entity.Table.builder().build();

}
