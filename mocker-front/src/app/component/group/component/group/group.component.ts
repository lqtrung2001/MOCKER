import { Component, Injector, OnInit } from '@angular/core';
import { AbstractComponent } from '@core/common/abstract.component';
import { GroupModel } from '@core/domain/model/entity/group.model';
import { GroupService } from '@core/service/group.service';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import {
  CreateEntityModal,
  CreateEntityModalCloseOptions,
  CreateEntityModalOptions
} from '@shared/modal/create-entity/create-entity.modal';
import { RoleEnum } from '@core/domain/enum/role.enum';
import { GroupMemberModel } from '@core/domain/model/entity/group-member.model';
import { PermissionService } from '@core/service/permission.service';
import { PermissionUtil } from '@core/util/permission.util';

/**
 * @author Do Quoc Viet
 */

type Controls = {
  name: FormControl;
  description: FormControl;
}

@Component({
  selector: 'moc-group',
  templateUrl: 'group.component.html',
  styleUrls: ['group.component.scss']
})
export class GroupComponent extends AbstractComponent implements OnInit {
  group: GroupModel;
  formGroup: FormGroup<Controls>;

  constructor(
    injector: Injector,
    private groupService: GroupService,
    private permissionService: PermissionService
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      name: this.formBuilder.control(undefined, [Validators.required]),
      description: this.formBuilder.control(undefined, [Validators.required])
    });
  }

  ngOnInit(): void {
    const id: string | null = this.activatedRoute.snapshot.paramMap.get('id');
    if (id) {
      this.groupService.getEntity(id).subscribe((group: GroupModel): void => {
        this.group = group;
        this.formGroup.patchValue(group);
        this.permissionService.getPermission('group', id)
          .subscribe((role: RoleEnum): void => {
            this.toastrProvider.showInformation({
              detail: PermissionUtil.getLabelFollowingRole(role)
            });
          });
      });
    } else {
      setTimeout((): void => {
        const options: CreateEntityModalOptions = {
          type: 'group',
          description: this.translateService.instant('component.groups.information')
        };
        this.modalService.open(CreateEntityModal, options).subscribe((closeOptions: CreateEntityModalCloseOptions): void => {
          if (!closeOptions) {
            return;
          }
          this.group = {
            ...new GroupModel(),
            name: closeOptions.name,
            description: closeOptions.description
          };
          this.formGroup.patchValue(this.group);
          this.submit();
        });
      });
    }
  }

  submit(): void {
    this.formGroup.markAllAsTouched();
    if (this.formGroup.invalid) {
      return;
    }
    this.group = {
      ...this.group,
      ...this.formGroup.getRawValue()
    };
    if (this.group.id) {
      const currentRole: RoleEnum = this.group.groupMembers
        .find((groupMember: GroupMemberModel): boolean => groupMember.user.id === this.applicationConfig.user?.id)!
        .role;
      if (currentRole !== RoleEnum.GROUP_ADMIN && currentRole !== RoleEnum.GROUP_ASSOCIATE) {
        this.modalProvider.showError({
          detail: 'You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.'
        });
        return;
      }
    }
    this.groupService.upsertEntity(this.group).subscribe((group: GroupModel): void => {
      this.groupService.getEntity(group.id).subscribe((group: GroupModel): void => {
        this.group = group;
        this.formGroup.patchValue(group);
        if (this.router.url.includes('new')) {
          this.location.replaceState(`/group/${group.id}`);
        }
        this.toastrProvider.showSuccess({
          detail: `The group <b>${group.name}</b> has been created successfully!`
        });
      });
    });
  }

  delete(): void {
    if (!this.group.id || this.group.id === 'new') {
      this.modalProvider.showError({
        body: 'The group is not available for deleting at this moment, please try again!'
      });
      return;
    }
    const currentRole: RoleEnum = this.group.groupMembers
      .find((groupMember: GroupMemberModel): boolean => groupMember.user.id === this.applicationConfig.user?.id)!
      .role;
    if (currentRole !== RoleEnum.GROUP_ADMIN) {
      this.modalProvider.showError({
        detail: 'You can not be allowed to perform this action!<br/>Please try again later when you have a new role with <b>group admin</b> or <b>group associate</b>.'
      });
      return;
    }
    this.modalProvider.showConfirmation({
      body: 'message.group_delete_confirm'
    }).subscribe((result: boolean): void => {
      if (result) {
        this.groupService.deleteEntity(this.group.id).subscribe((group: GroupModel): void => {
          if (group) {
            this.toastrProvider.showInformation({
              detail: `The group <b>${group.name}</b> has been deleted successfully!`
            });
            this.router.navigate(['/group']).then();
          }
        });
      }
    });
  }

}
