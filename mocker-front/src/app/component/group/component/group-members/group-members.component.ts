import { AbstractComponent } from '@core/common/abstract.component';
import { Component, Injector, Input } from '@angular/core';
import { GroupModel } from '@core/domain/model/entity/group.model';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-group-member',
  templateUrl: 'group-members.component.html',
  styleUrls: ['group-members.component.scss']
})
export class GroupMembersComponent extends AbstractComponent {
  @Input() group: GroupModel;

  constructor(injector: Injector) {
    super(injector);
  }
}
