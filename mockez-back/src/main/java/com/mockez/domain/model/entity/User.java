package com.mockez.domain.model.entity;

import com.mockez.domain.model.entity.enumeration.Gender;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.SuperBuilder;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ForeignKey;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.time.OffsetDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

import static java.util.Collections.emptyList;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "[user]")
@ToString(callSuper = true)
@SuperBuilder(toBuilder = true)
public class User extends Base {

    @Id
    @Column(updatable = false)
    private UUID id;

    @Column(nullable = false)
    private String username;

    @Column(nullable = false)
    private String password;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String phone;

    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private Gender gender;

    @Column(nullable = false)
    private String address;

    @Column(nullable = false)
    private OffsetDateTime dob;

    @Column(name = "is_account_non_expired", nullable = false)
    private Boolean isAccountNonExpired;

    @Column(name = "is_account_non_locked", nullable = false)
    private Boolean isAccountNonLocked;

    @Column(name = "is_credentials_non_expired", nullable = false)
    private Boolean isCredentialsNonExpired;

    @Column(name = "is_enabled", nullable = false)
    private Boolean isEnabled;

    @Column(name = "granted_authorities", nullable = false)
    private String grantedAuthorities;

    @ManyToOne
    @ToString.Exclude
    @JoinColumn(nullable = false, foreignKey = @ForeignKey(name = "user_group_fk"))
    private Group group = Group.builder().build();

    @ToString.Exclude
    @OneToMany(mappedBy = "user")
    private List<GroupAccess> groupAccesses = emptyList();

    public Set<? extends GrantedAuthority> getGrantedAuthoritiesWithGrantedAuthorityFormat() {
        return Arrays.stream(grantedAuthorities.split("\\|"))
                .map(SimpleGrantedAuthority::new)
                .collect(Collectors.toSet());
    }

    public void setGrantedAuthoritiesWithGrantedAuthority(Set<GrantedAuthority> grantedAuthorities) {
        this.grantedAuthorities = grantedAuthorities.stream()
                .map(GrantedAuthority::getAuthority)
                .collect(Collectors.joining("|"));
    }
}
