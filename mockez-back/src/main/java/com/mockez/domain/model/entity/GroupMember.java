package com.mockez.domain.model.entity;

import com.mockez.domain.model.entity.composite_key.GroupMemberPK;
import com.mockez.domain.model.entity.enumeration.Role;
import lombok.*;
import lombok.experimental.SuperBuilder;

import javax.persistence.Table;
import javax.persistence.*;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "[GROUP_MEMBER]")
@ToString(callSuper = true)
@SuperBuilder(toBuilder = true)
public class GroupMember extends Base {

    @EmbeddedId
    private GroupMemberPK id;

    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private Role role = Role.GROUP_ASSOCIATE;

    @ManyToOne
    @ToString.Exclude
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "USER_GROUP_MEMBER_FK"), insertable = false, updatable = false)
    private User user = User.builder().build();

    @ManyToOne
    @ToString.Exclude
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "GROUP_GROUP_MEMBER_FK"), insertable = false, updatable = false)
    private Group group = Group.builder().build();

}
