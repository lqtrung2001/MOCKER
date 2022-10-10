package com.mockez.domain.model.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
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

import java.util.UUID;

import static javax.persistence.FetchType.LAZY;
import static lombok.AccessLevel.NONE;

@Entity
@Getter
@Setter
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
public class Source extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    private UUID id;

    @Column(nullable = false, length = 4096)
    private String value;

    @ToString.Exclude
    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "source_generate_type_id_fk"))
    private GenerateType generateType;
}
