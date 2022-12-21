package com.mockez.repository;

import com.mockez.domain.model.entity.GroupMember;
import com.mockez.domain.model.entity.composite_key.GroupMemberPK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Repository
public interface GroupMemberRepository extends JpaRepository<GroupMember, GroupMemberPK> {
}
