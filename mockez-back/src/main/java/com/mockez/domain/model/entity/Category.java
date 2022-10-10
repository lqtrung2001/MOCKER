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
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import java.util.ArrayList;
import java.util.List;
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
@Table(uniqueConstraints = {
        @UniqueConstraint(name = "category_name_unique", columnNames = "name")
})
public class Category extends Base{

    @Id
    @Setter(NONE)
    @Column(updatable = false)
    private UUID id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false, length = 1000 )
    private String description;

    @ToString.Exclude
    @OneToMany(mappedBy = "category")
    private List<GenerateType> generateTypes = new ArrayList<>();

}



