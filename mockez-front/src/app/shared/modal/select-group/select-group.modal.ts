import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { Component } from '@angular/core';
import { Group } from '@core/model/group';
import { GroupService } from '@core/service/group.service';

@Component({
  selector: 'app-select-group-modal',
  templateUrl: './select-group.modal.html',
  styleUrls: ['./select-group.modal.scss']
})
export class SelectGroupModal extends Modal {

  action: string = '';
  groups: Group[] = [];
  selectedGroup: Group = new Group();
  isShowPopup: boolean = false;

  onInjectInputs(input: any): void {
    this.action = input.action;
  }

  constructor(
    private groupService: GroupService
  ) {
    super();
    groupService.getGroupsWithAccess().subscribe((groups: Group[]) => {
      this.groups = groups;
    });
  }

  selectGroup(group: Group): void {
    this.selectedGroup = group;
    this.isShowPopup = false;
  }

}
