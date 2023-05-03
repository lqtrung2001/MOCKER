import { AbstractComponent } from '@core/common/abstract.component';
import { Component, Injector, Input, OnInit } from '@angular/core';
import { GroupMemberModel } from '@core/domain/model/entity/group-member.model';
import { CreateAction, Grid, GridValue } from '@shared/component/grid/grid.component';
import { StringUtil } from '@core/util/string.util';
import { GroupMemberService } from '@core/service/group-member.service';
import { AddUserModal, AddUserModalOptions } from '@app/component/group/modal/add-user/add-user.modal';
import { UserModel } from '@core/domain/model/entity/user.model';
import { GroupModel } from '@core/domain/model/entity/group.model';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-group-members',
  templateUrl: 'group-members.component.html',
  styleUrls: ['group-members.component.scss']
})
export class GroupMembersComponent extends AbstractComponent implements OnInit {
  @Input() group: GroupModel;
  @Input() groupMembers: GroupMemberModel[] = [];
  grid: Grid;

  constructor(
    injector: Injector,
    private groupMemberService: GroupMemberService
  ) {
    super(injector);
  }

  ngOnInit(): void {
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
      values: this.groupMembers.map((groupMember: GroupMemberModel): GridValue => ({
        name: {
          value: groupMember.user.name,
          click: () => this.router.navigate([`/people/${groupMember.user.id}`]),
          html: `<a class='tw-font-medium hover:tw-underline tw-cursor-pointer tw-text-blue tw-uppercase'></a>`
        },
        role: {
          value: this.translateService.instant(`component.group_members.${groupMember.role.toLowerCase()}`),
          html: `<p class='tw-font-medium tw-text-blue hover:tw-underline tw-cursor-pointer'></p>`
        },
        bio: this.truncatePipe.transform(groupMember.user.bio, 50),
        email: {
          value: groupMember.user.username,
          click: () => this.router.navigate([`/people/${groupMember.user.id}`]),
          html: `<a class='tw-font-medium hover:tw-underline tw-cursor-pointer tw-text-blue'></a>`
        },
        phone: groupMember.user.phone,
        delete: {
          value: StringUtil.EMPTY,
          click: (): void => {
            this.modalProvider.showConfirmation({
              body: 'component.group_members.remove_user_confirmation'
            }).subscribe((result: boolean): void => {
              if (result) {
                this.groupMemberService.deleteEntity(groupMember.id).subscribe((): void => {
                  this.groupMemberService.getGroupMembersByGroupId(this.group.id).subscribe((groupMembers: GroupMemberModel[]): void => {
                    this.groupMembers = groupMembers;
                  });
                });
              }
            });
          },
          html: '<i class="tw-cursor-pointer tw-text-red tw-self-center fa-regular fa-circle-xmark"></i>'
        }
      }))
    };
  }

  get createAction(): CreateAction {
    return {
      click: (): void => {
        const options: AddUserModalOptions = {
          addedUserIds: this.groupMembers.map((groupMember: GroupMemberModel): string => groupMember.user.id)
        };
        this.modalService.open(AddUserModal, options).subscribe((user: UserModel): void => {
          if (user) {
            const groupMember: GroupMemberModel = new GroupMemberModel();
            groupMember.user = user;
            groupMember.group = this.group;
            this.groupMemberService.upsertEntity(groupMember).subscribe((response: GroupMemberModel): void => {
              this.groupMembers.push(response);
              this.refresh();
            });
          }
        });
      },
      content: 'component.group_members.add_user'
    };
  }

}
