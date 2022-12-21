import { Component } from '@angular/core';
import { User } from '@core/model/user';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { Gender } from '@core/model/enumeration/gender';
import { formatDate } from '@angular/common';
import { UserService } from '@core/service/user.service';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import {
  ChangePasswordModal,
  ChangePasswordModalOptions
} from '@app/component/profile/modal/change-password/change-password.modal';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.scss']
})
export class ProfileComponent {

  user: User;
  formGroup: FormGroup;
  gender: Gender | undefined;
  MALE: Gender = Gender.MALE;
  FEMALE: Gender = Gender.FEMALE;

  constructor(
    private modalProvider: ModalProvider,
    private formBuilder: FormBuilder,
    private userService: UserService,
    private modalService: ModalService
  ) {
    this.formGroup = formBuilder.group({
      username: formBuilder.control('', [Validators.required]),
      name: formBuilder.control('', [Validators.required]),
      bio: formBuilder.control('', [Validators.required]),
      phone: formBuilder.control('', [Validators.required]),
      address: formBuilder.control('', [Validators.required]),
      dob: formBuilder.control('', [Validators.required])
    });
    const storage = window.localStorage.getItem('user');
    if (!storage) {
      this.modalProvider.showError({
        body: 'Can not authenticate'
      }).subscribe(() => {
        console.log('Can not authenticate');
      });
    } else {
      this.user = JSON.parse(storage);
      this.gender = this.user.gender;
      this.formGroup.patchValue(this.user);
      if (this.user.dob) {
        this.formGroup.get('dob')?.setValue(formatDate(this.user.dob, 'yyyy-MM-dd', 'en'));
      }
    }
  }

  submit(): void {

    if (this.formGroup.invalid) {
      return;
    }

    this.user.username = this.formGroup.get('username')?.value;
    this.user.name = this.formGroup.get('name')?.value;
    this.user.bio = this.formGroup.get('bio')?.value;
    this.user.phone = this.formGroup.get('phone')?.value;
    this.user.address = this.formGroup.get('address')?.value;
    this.user.dob = this.formGroup.get('dob')?.value;
    if (this.user.dob) {
      this.user.dob = new Date(this.user.dob);
    }
    this.user.gender = this.gender;
    this.userService.update(this.user).subscribe((id: string) => {
      if (id) {
        this.userService.findOneByUsername(this.user.username!).subscribe((user: User) => {
          window.localStorage.setItem('user', JSON.stringify(user));
          this.user = user;
        });
      }
    });
  }

  changePassword(): void {
    const options: ChangePasswordModalOptions = {
      username: this.user.username!
    };
    this.modalService.open(ChangePasswordModal, options).onResult().subscribe((user: User) => {
      if (user) {
        this.user.version = user.version;
      }
    });
  }
}
