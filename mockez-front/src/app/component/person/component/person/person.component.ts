import { Component } from '@angular/core';
import { User } from '@core/model/user';
import { FormBuilder } from '@angular/forms';
import { Gender } from '@core/model/enumeration/gender';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { UserService } from '@core/service/user.service';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { formatDate } from '@angular/common';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-person',
  templateUrl: './person.component.html',
  styleUrls: ['./person.component.scss']
})
export class PersonComponent {

  user: User;
  gender: Gender | undefined;
  dob: string;
  MALE: Gender = Gender.MALE;
  FEMALE: Gender = Gender.FEMALE;

  constructor(
    private modalProvider: ModalProvider,
    private formBuilder: FormBuilder,
    private userService: UserService,
    private modalService: ModalService,
    private activatedRoute: ActivatedRoute
  ) {
    const id: string = activatedRoute.snapshot.params['id'];
    userService.getUser(id).subscribe((user: User) => {
      this.user = user;
      this.gender = this.user.gender;
      if (this.user.dob) {
        this.dob = formatDate(this.user.dob, 'yyyy-MM-dd', 'en');
      }
    });
  }

}
