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
import javax.persistence.Table;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "[SOURCE]")
@ToString(callSuper = true)
@SuperBuilder(toBuilder = true)
public class Source extends Base {

    @Id
    @Column(name = "ID", updatable = false)
    private UUID id;

    @Column(name = "VALUE", nullable = false, length = 4096)
    private String value;

    @ManyToOne
    @ToString.Exclude
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "SOURCE_GENERATE_TYPE_ID_FK"))
    private GenerateType generateType = GenerateType.builder().build();
}
