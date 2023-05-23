import { AbstractModal } from '@core/common/abstract.modal';
import { Component, Injector } from '@angular/core';
import { RoleEnum } from '@core/domain/enum/role.enum';
import { GroupMemberModel } from '@core/domain/model/entity/group-member.model';

/**
 * @author Do Quoc Viet
 */

export interface ChangeRoleModalOptions {
  current: GroupMemberModel;
  groupMembers: GroupMemberModel[];
}

@Component({
  selector: 'moc-change-role-modal',
  templateUrl: 'change-role.modal.html',
  styleUrls: ['change-role.modal.scss']
})
export class ChangeRoleModal extends AbstractModal {
  override options: ChangeRoleModalOptions;
  roles: RoleEnum[] = [];

  constructor(injector: Injector) {
    super(injector);
    this.roles = [RoleEnum.GROUP_ADMIN, RoleEnum.GROUP_ASSOCIATE, RoleEnum.USER];
  }

  changeRole(role: RoleEnum): void {
    if (role === this.options.current.role) {
      return;
    }
    if (this.options.current.user.id === this.appConfigService.user?.id) {
      this.modalProvider.showError({
        detail: 'You can not change role <b>yourself</b> from this group! Please try again.'
      });
      return;
    }
    const authenticatedUserRole: RoleEnum = this.options.groupMembers
      .find((groupMember: GroupMemberModel): boolean => groupMember.user.id === this.appConfigService.user?.id)!
      .role;
    const oldRole: RoleEnum = this.options.current.role;
    if (authenticatedUserRole === RoleEnum.USER) {
      this.modalProvider.showError({
        detail: 'You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.'
      });
      return;
    }
    if (authenticatedUserRole === RoleEnum.GROUP_ASSOCIATE) {
      if (role === RoleEnum.GROUP_ADMIN) {
        this.modalProvider.showError({
          detail: 'You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b>.'
        });
        return;
      }
      if (role === RoleEnum.USER && oldRole === RoleEnum.GROUP_ASSOCIATE) {
        this.modalProvider.showError({
          detail: 'You can not be allowed to perform this action!<br/>A <b>group associate</b> can not be changed to user role if you have <b>group associate</b> role.'
        });
        return;
      }
    }
    if (authenticatedUserRole === RoleEnum.GROUP_ADMIN && role === RoleEnum.GROUP_ADMIN) {
      this.modalProvider.showConfirmation({
        detail: 'Are you sure you want to change this user\'s role to <b>group admin<b>, your role will be <b>user</b> after that?'
      }).subscribe((result: boolean): void => {
        if (result) {
          this.close(role);
        }
      });
    } else {
      this.close(role);
    }
  }

}
