import { Component } from '@angular/core';
import { UserService } from '@core/service/user.service';
import { Group } from '@core/model/group';
import { Router } from '@angular/router';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { CreateGroupModal } from '@app/component/group/modal/create-group/create-group.modal';

@Component({
  selector: 'app-groups',
  templateUrl: './groups.component.html',
  styleUrls: ['./groups.component.scss']
})
export class GroupsComponent {
  groups: Group[];

  constructor(
    private userService: UserService,
    private router: Router,
    private modalService: ModalService
  ) {
    this.groups = [
      new Group(),
      new Group(),
      new Group(),
      new Group(),
      new Group(),
      new Group(),
      new Group(),
      new Group(),
      new Group()
    ];
  }

  openDetail(id: string): void {
    this.router.navigate(['/group/' + id]).then(() => {
      console.log('Detail');
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

  public setLineBackgroundColor(index: number): any {
    const number = Math.floor(Math.random() * (3));
    let backgroundColor;
    switch (number) {
      case 0: {
        backgroundColor = '#FF605C';
        break;
      }
      case 1: {
        backgroundColor = '#FFBD44';
        break;
      }
      default: {
        backgroundColor = '#00CA4E';
        break;
      }
    }
    return {
      backgroundColor
    };
  }
}
