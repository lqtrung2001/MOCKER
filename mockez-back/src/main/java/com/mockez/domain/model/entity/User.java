package com.mockez.domain.model.entity;

import com.mockez.domain.model.entity.enumeration.Gender;
import lombok.*;
import lombok.experimental.SuperBuilder;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import javax.persistence.Table;
import javax.persistence.*;
import java.time.OffsetDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

import static java.util.Collections.emptyList;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "[USER]")
@ToString(callSuper = true)
@SuperBuilder(toBuilder = true)
public class User extends Base {

    @Id
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(
            name = "UUID",
            strategy = "org.hibernate.id.UUIDGenerator"
    )
    @Column(name = "ID", updatable = false)
    private UUID id;

    @Column(name = "USERNAME", nullable = false)
    private String username;

    @Column(name = "PASSWORD", nullable = false)
    private String password;

    @Column(name = "NAME", nullable = false)
    private String name;

    @Column(name = "BIO", nullable = false)
    private String bio;

    @Column(name = "PHONE", nullable = false)
    private String phone;

    @Column(name = "GENDER", nullable = false)
    @Enumerated(EnumType.STRING)
    private Gender gender;

    @Column(name = "ADDRESS", nullable = false)
    private String address;

    @Column(name = "DOB", nullable = false)
    private OffsetDateTime dob;

    @Column(name = "IS_ACCOUNT_NON_EXPIRED", nullable = false)
    private Boolean isAccountNonExpired;

    @Column(name = "IS_ACCOUNT_NON_LOCKED", nullable = false)
    private Boolean isAccountNonLocked;

    @Column(name = "IS_CREDENTIALS_NON_EXPIRED", nullable = false)
    private Boolean isCredentialsNonExpired;

    @Column(name = "IS_ENABLED", nullable = false)
    private Boolean isEnabled;

    @Column(name = "GRANTED_AUTHORITIES", nullable = false)
    private String grantedAuthorities;

    @ToString.Exclude
    @OneToMany(mappedBy = "group")
    private List<GroupMember> groupMembers = emptyList();

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
