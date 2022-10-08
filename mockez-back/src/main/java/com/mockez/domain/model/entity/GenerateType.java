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
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import java.util.ArrayList;
import java.util.List;

import static javax.persistence.FetchType.LAZY;
import static lombok.AccessLevel.NONE;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
@Table(uniqueConstraints = {
        @UniqueConstraint(name = "generate_type_code_unique", columnNames = "code")
})
public class GenerateType extends Base {

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    private String id;

    @Column(nullable = false)
    private String code;

    @Column(nullable = false)
    private String description;

    @ToString.Exclude
    @OneToMany(mappedBy = "generateType", fetch = LAZY)
    private List<Source> sources = new ArrayList<>();

    @ToString.Exclude
    @ManyToOne(fetch = LAZY)
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "generate_type_category_id_fk"))
    private Category category;

    @ToString.Exclude
    @ManyToMany(mappedBy = "generateTypes", fetch = LAZY)
    private List<SQLType> sqlTypes = new ArrayList<>();

}
