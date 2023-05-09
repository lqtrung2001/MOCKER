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
        body: 'modal.change_role.can_not_change_role_of_self'
      });
      return;
    }
    const authenticatedUserRole: RoleEnum = this.options.groupMembers
      .find((groupMember: GroupMemberModel): boolean => groupMember.user.id === this.appConfigService.user?.id)!
      .role;
    const oldRole: RoleEnum = this.options.current.role;
    if (authenticatedUserRole === RoleEnum.USER) {
      this.modalProvider.showError({
        body: 'modal.change_role.not_permitted'
      });
      return;
    }
    if (authenticatedUserRole === RoleEnum.GROUP_ASSOCIATE) {
      if (role === RoleEnum.GROUP_ADMIN) {
        this.modalProvider.showError({
          body: 'modal.change_role.not_permitted'
        });
        return;
      }
      if (role === RoleEnum.USER && oldRole === RoleEnum.GROUP_ASSOCIATE) {
        this.modalProvider.showError({
          body: 'modal.change_role.not_permitted'
        });
        return;
      }
    }
    if (authenticatedUserRole === RoleEnum.GROUP_ADMIN && role === RoleEnum.GROUP_ADMIN) {
      this.modalProvider.showConfirmation({
        body: 'modal.change_role.change_new_admin_confirmation'
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
