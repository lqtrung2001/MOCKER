import { Component, Injector, OnInit } from '@angular/core';
import { AbstractComponent } from '@core/common/abstract.component';
import { GroupModel } from '@core/domain/model/entity/group.model';
import { GroupService } from '@core/service/group.service';
import { CreateAction, Grid, GridValue } from '@shared/component/grid/grid.component';
import { StringUtil } from '@core/util/string.util';
import { GroupMemberModel } from '@core/domain/model/entity/group-member.model';

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

  constructor(
    injector: Injector,
    private groupService: GroupService
  ) {
    super(injector);
  }

  ngOnInit(): void {
    this.groupService.getEntities().subscribe((groups: GroupModel[]): void => {
      this.grid = {
        columns: [
          {
            label: this.translateService.instant('component.groups.name'),
            key: 'name',
            isSearched: true
          },
          {
            label: this.translateService.instant('component.groups.description'),
            key: 'description'
          },
          {
            label: this.translateService.instant('component.groups.shared_by'),
            key: 'sharedBy',
            isSearched: true
          },
          {
            label: this.translateService.instant('component.groups.last_modified'),
            key: 'lastModified'
          }
        ],
        values: groups.map((group: GroupModel): GridValue => ({
          name: {
            value: group.name,
            click: () => this.router.navigate([`/group/${group.id}`]),
            html: `<a class='tw-font-medium hover:tw-underline tw-cursor-pointer tw-text-blue tw-uppercase'></a>`
          },
          description: this.truncatePipe.transform(group.description, 50),
          sharedBy: {
            value: this.truncatePipe.transform(group.groupMembers
              .map((groupMember: GroupMemberModel): string => this.truncatePipe
                .transform(groupMember.user.name.substring(0, groupMember.user.name.indexOf(StringUtil.SPACE)), 10))
              .join(', '), 30),
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

}
