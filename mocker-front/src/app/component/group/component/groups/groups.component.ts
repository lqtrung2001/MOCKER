import { ChangeDetectorRef, Component, Injector, OnInit } from '@angular/core';
import { AbstractComponent } from '@core/common/abstract.component';
import { GroupModel } from '@core/domain/model/entity/group.model';
import { GroupService } from '@core/service/group.service';
import { CreateAction, Grid, GridValue } from '@shared/component/grid/grid.component';
import { StringUtil } from '@core/util/string.util';
import { RoleEnum } from '@core/domain/enum/role.enum';
import { RoleUtil } from '@core/util/role.util';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-groups',
  templateUrl: 'groups.component.html',
  styleUrls: ['groups.component.scss']
})
export class GroupsComponent extends AbstractComponent implements OnInit {
  grid: Grid;
  currentRole: RoleEnum | undefined;

  constructor(
    injector: Injector,
    private groupService: GroupService
  ) {
    super(injector);
  }

  ngOnInit(): void {
    const roles: RoleEnum[] | undefined = this.activatedRoute.snapshot.queryParamMap.get('roles')
      ?.toString()
      .split(',')
      .filter((role: string): boolean => !!role)
      .map((role: string): RoleEnum => RoleUtil.valueOf(role));
    if (roles?.length === 1) {
      this.currentRole = roles.at(0)!;
    } else {
      this.currentRole = undefined;
    }
    this.initialEntities(roles);
  }

  initialEntities(roles: RoleEnum[] = []): void {
    this.groupService.getGroups(roles).subscribe((groups: GroupModel[]): void => {
      this.grid = {
        columns: [{
          label: this.translateService.instant('component.groups.name'),
          key: 'name',
          isSearched: true
        }, {
          label: this.translateService.instant('component.groups.description'),
          key: 'description',
          isSearched: true
        }, {
          label: this.translateService.instant('component.groups.shared_by'),
          key: 'sharedBy'
        }, {
          label: this.translateService.instant('component.groups.last_modified'),
          key: 'lastModified'
        }],
        values: groups.map((group: GroupModel): GridValue => ({
          name: {
            value: group.name,
            click: () => this.router.navigate([`/group/${group.id}`]),
            html: `<a class='tw-font-medium hover:tw-underline tw-cursor-pointer tw-text-blue'></a>`
          },
          description: this.truncatePipe.transform(group.description, 50),
          sharedBy: {
            value: group.groupMembers.length + ' contributors',
            html: `<a class='tw-font-medium hover:tw-underline tw-cursor-pointer tw-text-blue'></a>`,
            click: () => this.router.navigate([`/group/${group.id}`])
          },
          lastModified: this.datePipe.transform(group.modifiedDate) || StringUtil.EMPTY
        }))
      };
    });
  }

  get createAction(): CreateAction {
    return {
      click: () => this.router.navigate([`/group/new`]),
      content: 'component.groups.create'
    };
  }

  roleChange(role: RoleEnum | undefined): void {
    if (role !== this.currentRole) {
      this.initialEntities(role ? [role] : undefined);
      this.currentRole = role;
    }
  }
}
