import { Component } from '@angular/core';
import { UserService } from '@core/service/user.service';
import { Group } from '@core/model/group';
import { Router } from '@angular/router';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { CreateGroupModal } from '@app/component/group/modal/create-group/create-group.modal';
import { GroupService } from '@core/service/group.service';
import { FormBuilder, FormControl } from '@angular/forms';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'app-groups',
  templateUrl: 'groups.component.html',
  styleUrls: ['groups.component.scss']
})
export class GroupsComponent {

  storage: Group[] = [];
  groups: Group[] = [];
  filter: FormControl;

  constructor(
    private userService: UserService,
    private router: Router,
    private modalService: ModalService,
    private groupService: GroupService,
    private formBuilder: FormBuilder
  ) {
    this.filter = formBuilder.control('');
    this.filter.valueChanges.subscribe((value: string) => {
      this.groups = this.storage.filter((group: Group) =>
        group.name?.toUpperCase().includes(value.toUpperCase())
        || group.description?.toUpperCase().includes(value.toUpperCase()));
    });
    groupService.getGroupsWithAccess().subscribe((groups: Group[]) => {
      this.storage = groups;
      this.groups = groups;
    });
  }

  create(): void {
    this.modalService.open(CreateGroupModal, {})
      .onResult().subscribe((id: string) => {
      if (id) {
        this.router.navigate(['/group/' + id]).then(() => {
          console.log('Create Group successful');
        });
      }
    });
  }
}
