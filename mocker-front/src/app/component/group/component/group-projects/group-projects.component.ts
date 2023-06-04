import { AbstractComponent } from '@core/common/abstract.component';
import { Component, Injector, Input, OnChanges, SimpleChanges } from '@angular/core';
import { ProjectModel } from '@core/domain/model/entity/project.model';
import { CreateAction, Grid, GridValue } from '@shared/component/grid/grid.component';
import { StringUtil } from '@core/util/string.util';
import { ProjectService } from '@app/core/service/project.service';
import { GroupModel } from '@core/domain/model/entity/group.model';
import { GroupMemberModel } from '@core/domain/model/entity/group-member.model';
import { RoleEnum } from '@core/domain/enum/role.enum';
import { GroupService } from '@app/core/service/group.service';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-group-projects',
  templateUrl: 'group-projects.component.html',
  styleUrls: ['group-projects.component.scss']
})
export class GroupProjectsComponent extends AbstractComponent implements OnChanges {
  @Input() group: GroupModel;
  grid: Grid;
  currentRole: RoleEnum | undefined;

  constructor(
    injector: Injector,
    private projectService: ProjectService,
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
          label: this.translateService.instant('component.group_projects.name'),
          key: 'name',
          isSearched: true
        },
        {
          label: this.translateService.instant('component.group_projects.description'),
          key: 'description'
        },
        {
          label: this.translateService.instant('component.group_projects.created_date'),
          key: 'createdDate'
        },
        {
          label: this.translateService.instant('component.group_projects.last_modified'),
          key: 'lastModified'
        },
        {
          label: this.translateService.instant('component.group_projects.delete'),
          key: 'delete'
        }
      ],
      values: !this.group ? [] : this.group.projects.map((project: ProjectModel): GridValue => ({
        name: {
          value: project.name,
          click: () => this.router.navigate([`/project/${project.id}`]),
          html: `<a class='tw-font-medium hover:tw-underline tw-cursor-pointer tw-text-blue tw-uppercase'></a>`
        },
        description: this.truncatePipe.transform(project.description, 50),
        createdDate: this.datePipe.transform(project.createdDate) || StringUtil.EMPTY,
        lastModified: this.datePipe.transform(project.modifiedDate) || StringUtil.EMPTY,
        delete: {
          value: StringUtil.EMPTY,
          click: (): void => {
            if (this.invalidDeleteProject()) {
              return;
            }
            this.modalProvider.showConfirmation({
              body: 'component.group_projects.delete_project_confirmation'
            }).subscribe((result: boolean): void => {
              if (result) {
                this.projectService.deleteEntity(project.id).subscribe((): void => {
                  this.groupService.getProjectsByGroupId(this.group.id, this.currentRole ? [this.currentRole] : [])
                    .subscribe((projects: ProjectModel[]): void => {
                      this.group.projects = projects;
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

  invalidDeleteProject(): boolean {
    const currentRole: RoleEnum = this.group.groupMembers.find((groupMember: GroupMemberModel): boolean => groupMember.user.id === this.applicationConfig.user?.id)!.role;
    if (currentRole !== RoleEnum.GROUP_ADMIN && currentRole !== RoleEnum.GROUP_ASSOCIATE) {
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
        content: 'component.group_projects.create_project'
      };
    }
    return {
      click: () => this.router.navigate(['/project/new'], {
        queryParams: {
          groupId: this.group.id
        }
      }),
      content: 'component.group_projects.create_project'
    };
  }

  roleChange(role?: RoleEnum): void {
    if (role !== this.currentRole) {
      this.groupService.getProjectsByGroupId(this.group.id, role ? [role] : [])
        .subscribe((projects: ProjectModel[]): void => {
          this.group.projects = projects;
          this.currentRole = role;
          this.refresh();
        });
    }
  }

}
