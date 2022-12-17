import { Component } from '@angular/core';
import { User } from '@core/model/user';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Gender } from '@core/model/enumeration/gender';
import { formatDate } from '@angular/common';
import { UserService } from '@core/service/user.service';

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
    private userService: UserService
  ) {
    this.formGroup = formBuilder.group({
      username: formBuilder.control(''),
      password: formBuilder.control(''),
      name: formBuilder.control(''),
      bio: formBuilder.control(''),
      phone: formBuilder.control(''),
      address: formBuilder.control(''),
      dob: formBuilder.control('')
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
    this.user.username = this.formGroup.get('username')?.value;
    this.user.password = this.formGroup.get('password')?.value;
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
          user.password = this.user.password;
          window.localStorage.setItem('user', JSON.stringify(user));
          this.user = user;
        });
      }
    });
  }

  dobOnChange($event: Event) {
    console.log($event);
  }
}
