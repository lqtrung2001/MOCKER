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
    @OneToMany(mappedBy = "generateType")
    private List<Source> sources = new ArrayList<Source>();

    @ManyToOne
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "generate_type_category_id_fk"))
    private Category category;

    @ManyToMany(mappedBy = "generateTypes")
    @ToString.Exclude
    private List<SQLType> sqlTypes = new ArrayList<>();

}
