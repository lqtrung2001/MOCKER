package com.mocker.repository;

import com.mocker.domain.model.entity.Group;
import com.mocker.domain.model.entity.GroupMember;
import com.mocker.domain.model.entity.composite_key.GroupMemberPK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Repository
public interface GroupMemberRepository extends JpaRepository<GroupMember, GroupMemberPK> {

    List<GroupMember> findAllByGroup(Group group);

    List<GroupMember> findAllByGroupId(UUID groupId);

}
