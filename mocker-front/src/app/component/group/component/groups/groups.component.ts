import { Component, Injector, OnInit } from '@angular/core';
import { AbstractComponent } from '@core/common/abstract.component';
import { GroupModel } from '@core/domain/model/entity/group.model';
import { GroupService } from '@core/service/group.service';
import { GroupMemberModel } from '@core/domain/model/entity/group-member.model';
import { ImageProcessorUtil } from '@core/util/image-processor.util';
import { RoleEnum } from '@core/domain/enum/role.enum';
import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-groups',
  templateUrl: 'groups.component.html',
  styleUrls: ['groups.component.scss']
})
export class GroupsComponent extends AbstractComponent implements OnInit {
  protected readonly ImageProcessorUtil = ImageProcessorUtil;
  groups: GroupModel[] = [];
  groupMembers: GroupMemberModel[] = [];

  constructor(
    injector: Injector,
    private groupService: GroupService
  ) {
    super(injector);
  }

  ngOnInit(): void {
    this.groupService.getEntities().subscribe((groups: GroupModel[]): void => {
      this.groups = groups;
    });
  }

  getRole(group: GroupModel): RoleEnum | string {
    if (!group) {
      return StringUtil.EMPTY;
    }
    return group.groupMembers
      .find((groupMember: GroupMemberModel): boolean => groupMember.user.id === this.applicationConfig.user?.id)!
      .role;
  }

}
