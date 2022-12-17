import { Component } from '@angular/core';
import { Group } from '@core/model/group';
import { GroupService } from '@core/service/group.service';

@Component({
  selector: 'app-group',
  templateUrl: './group.component.html',
  styleUrls: ['./group.component.scss']
})
export class GroupComponent {

  group: Group;

  constructor(
    private groupService: GroupService
  ) {

  }

}
