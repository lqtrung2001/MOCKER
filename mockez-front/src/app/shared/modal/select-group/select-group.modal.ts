import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { Component } from '@angular/core';
import { Group } from '@core/model/group';
import { GroupService } from '@core/service/group.service';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';

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
    private groupService: GroupService,
    private modalProvider: ModalProvider
  ) {
    super();
    groupService.getGroupsWithAccess().subscribe((groups: Group[]) => {
      if (!groups?.length) {
        this.close(false);
        modalProvider.showError({
          body: 'You can not create a new project at this time, please create a group before creating a new project.'
        });
      } else {
        this.groups = groups;
      }
    });
  }

  selectGroup(group: Group): void {
    this.selectedGroup = group;
    this.isShowPopup = false;
  }

}
