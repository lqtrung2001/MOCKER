import { AbstractComponent } from '@core/common/abstract.component';
import { Component, Injector, Input, OnChanges, SimpleChanges } from '@angular/core';
import { GroupMemberModel } from '@core/domain/model/entity/group-member.model';
import { CreateAction, Grid, GridValue } from '@shared/component/grid/grid.component';
import { StringUtil } from '@core/util/string.util';
import { GroupMemberService } from '@core/service/group-member.service';
import { AddUserModal, AddUserModalOptions } from '@app/component/group/modal/add-user/add-user.modal';
import { UserModel } from '@core/domain/model/entity/user.model';
import { GroupModel } from '@core/domain/model/entity/group.model';
import { ChangeRoleModal, ChangeRoleModalOptions } from '@app/component/group/modal/change-role/change-role.modal';
import { RoleEnum } from '@core/domain/enum/role.enum';
import { GroupService } from '@core/service/group.service';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-group-members',
  templateUrl: 'group-members.component.html',
  styleUrls: ['group-members.component.scss']
})
export class GroupMembersComponent extends AbstractComponent implements OnChanges {
  @Input() group: GroupModel;
  grid: Grid;
  currentRole: RoleEnum | undefined;

  constructor(
    injector: Injector,
    private groupMemberService: GroupMemberService,
    private groupService: GroupService
  ) {
    super(injector);
  }

  ngOnChanges(changes: SimpleChanges): void {
    this.refresh();
  }

  refresh(): void {
    this.grid = {
      columns: [
        {
          label: this.translateService.instant('component.group_members.name'),
          key: 'name',
          isSearched: true
        },
        {
          label: this.translateService.instant('component.group_members.role'),
          key: 'role',
          isSearched: true
        },
        {
          label: this.translateService.instant('component.group_members.bio'),
          key: 'bio'
        },
        {
          label: this.translateService.instant('component.group_members.email'),
          key: 'email',
          isSearched: true
        },
        {
          label: this.translateService.instant('component.group_members.phone'),
          key: 'phone'
        },
        {
          label: this.translateService.instant('component.group_members.delete'),
          key: 'delete'
        }
      ],
      values: !this.group ? [] : this.group.groupMembers.map((groupMember: GroupMemberModel): GridValue => ({
        name: groupMember.user.name,
        role: {
          value: this.translateService.instant(`component.group_members.${groupMember.role.toLowerCase()}`),
          click: (): void => {
            const changeRoleModalOptions: ChangeRoleModalOptions = {
              current: groupMember,
              groupMembers: this.group.groupMembers
            };
            this.modalService.open(ChangeRoleModal, changeRoleModalOptions)
              .subscribe((role: RoleEnum): void => {
                if (!role) {
                  return;
                }
                groupMember.role = role;
                const isChangeGroupAdmin: boolean = RoleEnum.GROUP_ADMIN === role;
                this.groupMemberService.upsertEntity(groupMember)
                  .subscribe((groupMember: GroupMemberModel): void => {
                    this.group.groupMembers.forEach((item: GroupMemberModel): void => {
                      if (item.user.id === groupMember.user.id) {
                        item.role = groupMember.role;
                        item.version = groupMember.version;
                      }
                      if (isChangeGroupAdmin && item.user.id === this.applicationConfig.user?.id) {
                        item.role = RoleEnum.USER;
                        item.version--;
                      }
                    });
                    this.refresh();
                  });
              });
          },
          html: `<p class='tw-font-medium tw-text-blue hover:tw-underline tw-cursor-pointer'></p>`
        },
        bio: this.truncatePipe.transform(groupMember.user.bio, 50),
        email: groupMember.user.username,
        phone: groupMember.user.phone,
        delete: {
          value: StringUtil.EMPTY,
          click: (): void => {
            if (this.invalidDeleteMember(groupMember)) {
              return;
            }
            const isRemoveSelf: boolean = groupMember.user.id === this.applicationConfig.user?.id;
            this.modalProvider.showConfirmation({
              body: isRemoveSelf
                ? 'Are you want to leave this group?'
                : 'component.group_members.remove_user_confirmation'
            }).subscribe((result: boolean): void => {
              if (result) {
                this.groupMemberService.deleteEntity(groupMember.id).subscribe((): void => {
                  if (isRemoveSelf) {
                    this.router.navigate(['/group']).then();
                    return;
                  }
                  this.groupService.getGroupMembersByGroupId(this.group.id, this.currentRole ? [this.currentRole] : [])
                    .subscribe((groupMembers: GroupMemberModel[]): void => {
                      this.group.groupMembers = groupMembers;
                      this.refresh();
                    });
                });
              }
            });
          },
          html: '<i class="tw-cursor-pointer tw-text-red tw-self-center fa-solid fa-circle-xmark"></i>'
        }
      }))
    };
  }

  invalidDeleteMember(groupMember: GroupMemberModel): boolean {
    if (groupMember.user.id === this.applicationConfig.user?.id) {
      if (groupMember.role === RoleEnum.GROUP_ADMIN) {
        this.modalProvider.showError({
          detail: 'You can not leave this group while you are <b>group admin</b>. Please propose someone to <b>group admin</b>.'
        });
        return true;
      }
      return false;
    }
    const currentRole: RoleEnum = this.group.groupMembers.find((groupMember: GroupMemberModel): boolean => groupMember.user.id === this.applicationConfig.user?.id)!.role;
    if (currentRole === RoleEnum.USER
      || (currentRole === RoleEnum.GROUP_ASSOCIATE && groupMember.role === RoleEnum.GROUP_ASSOCIATE)
      || (currentRole === RoleEnum.GROUP_ASSOCIATE && groupMember.role === RoleEnum.GROUP_ADMIN)) {
      this.modalProvider.showError({
        detail: 'You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.'
      });
      return true;
    }
    return false;
  }

  get createAction(): CreateAction {
    const groupMember: GroupMemberModel | undefined = this.group.groupMembers
      .find((groupMember: GroupMemberModel): boolean => groupMember.user.id === this.applicationConfig.user?.id);
    if (!groupMember || (groupMember.role !== RoleEnum.GROUP_ADMIN && groupMember.role !== RoleEnum.GROUP_ASSOCIATE)) {
      return {
        click: () => this.modalProvider.showError({
          detail: 'You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.'
        }),
        content: 'component.group_members.add_user'
      };
    }
    return {
      click: (): void => {
        const options: AddUserModalOptions = {
          addedUserIds: this.group.groupMembers.map((groupMember: GroupMemberModel): string => groupMember.user.id)
        };
        this.modalService.open(AddUserModal, options).subscribe((user: UserModel): void => {
          if (user) {
            const groupMember: GroupMemberModel = new GroupMemberModel();
            groupMember.user = user;
            groupMember.group = this.group;
            this.groupMemberService.upsertEntity(groupMember).subscribe((response: GroupMemberModel): void => {
              this.group.groupMembers.push(response);
              this.refresh();
            });
          }
        });
      },
      content: 'component.group_members.add_user'
    };
  }

  roleChange(role?: RoleEnum): void {
    if (role !== this.currentRole) {
      this.groupService.getGroupMembersByGroupId(this.group.id, role ? [role] : [])
        .subscribe((groupMembers: GroupMemberModel[]): void => {
          this.group.groupMembers = groupMembers;
          this.currentRole = role;
          this.refresh();
        });
    }
  }

}
