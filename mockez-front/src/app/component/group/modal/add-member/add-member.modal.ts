import { Component } from '@angular/core';
import { User } from '@app/core/model/user';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { UserService } from '@core/service/user.service';
import { GroupMember } from '@core/model/group-member';

export interface AddMemberModalOptions {
  groupMembers: GroupMember[];
}

@Component({
  selector: 'app-add-member-modal',
  templateUrl: './add-member.modal.html',
  styleUrls: ['./add-member.modal.scss']
})
export class AddMemberModal extends Modal {

  users: User[] = [];
  excludeIds: string[] = [];

  override onInjectInputs(options: AddMemberModalOptions) {
    this.excludeIds = options.groupMembers.map((groupMember: GroupMember) => groupMember.user?.id!);
  }

  constructor(
    private userService: UserService
  ) {
    super();
    userService.getUsers().subscribe((users: User[]) => {
      this.users = users.filter((user: User) => !this.excludeIds.includes(user.id!));;
    });
  }

}
