import { Component } from '@angular/core';
import { User } from '@app/core/model/user';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { UserService } from '@core/service/user.service';
import { GroupMember } from '@core/model/group-member';
import { FormBuilder, FormControl } from '@angular/forms';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export interface AddMemberModalOptions {
  groupMembers: GroupMember[];
}

@Component({
  selector: 'app-add-member-modal',
  templateUrl: 'add-member.modal.html',
  styleUrls: ['add-member.modal.scss']
})
export class AddMemberModal extends Modal {

  storage: User[] = [];
  users: User[] = [];
  excludeIds: string[] = [];
  filter: FormControl;

  override onInjectInputs(options: AddMemberModalOptions) {
    this.excludeIds = options.groupMembers.map((groupMember: GroupMember) => groupMember.user?.id!);
  }

  constructor(
    private userService: UserService,
    private formBuilder: FormBuilder
  ) {
    super();
    this.filter = formBuilder.control('');
    this.filter.valueChanges.subscribe((value: string) => {
      this.users = this.storage.filter((user: User) => user.name?.toUpperCase().includes(value.toUpperCase())
        || user.bio?.toUpperCase().includes(value.toUpperCase()));
    });
    userService.getUsers().subscribe((users: User[]) => {
      this.users = users.filter((user: User) => !this.excludeIds.includes(user.id!));
      this.storage = this.users;
    });
  }

  openDetail(id: string): void {
    window.open(`http://localhost:4200/#/person/${id}`);
  }

}
