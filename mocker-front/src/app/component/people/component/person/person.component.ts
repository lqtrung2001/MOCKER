import { AbstractComponent } from '@core/common/abstract.component';
import { Component, Injector, OnInit } from '@angular/core';
import { UserModel } from '@core/domain/model/entity/user.model';
import { UserService } from '@core/service/user.service';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import {
  ChangePasswordModal,
  ChangePasswordModalOptions
} from '@app/component/auth/modal/change-password/change-password.modal';
import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */

type Controls = {
  username: FormControl,
  name: FormControl,
  bio: FormControl,
  phone: FormControl
}

@Component({
  selector: 'moc-person',
  templateUrl: 'person.component.html',
  styleUrls: ['person.component.scss']
})
export class PersonComponent extends AbstractComponent implements OnInit {
  user: UserModel;
  formGroup: FormGroup<Controls>;

  constructor(
    injector: Injector,
    private userService: UserService
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      username: this.formBuilder.control(undefined, [Validators.required, Validators.email]),
      name: this.formBuilder.control(StringUtil.EMPTY, [Validators.required]),
      bio: this.formBuilder.control(StringUtil.EMPTY, []),
      phone: this.formBuilder.control(StringUtil.EMPTY, [Validators.maxLength(12)])
    });
  }

  ngOnInit(): void {
    const id: string = this.activatedRoute.snapshot.paramMap.get('id')!;
    if (this.applicationConfig.user?.id && id !== this.applicationConfig.user?.id) {
      setTimeout((): void => {
        this.modalProvider.showError({
          detail: 'You can not access this resource! Please try again later.'
        });
      });
      this.router.navigate(['/']).then();
      return;
    }
    this.userService.getEntity(id).subscribe((user: UserModel): void => {
      this.user = user;
      this.formGroup.patchValue(user);
    });
  }

  submit(): void {
    const { name, bio, phone }: {
      name: FormControl,
      bio: FormControl,
      phone: FormControl
    } = this.formGroup.controls;
    if (name.invalid || bio.invalid || phone.invalid) {
      return;
    }
    const user: UserModel = {
      ...this.user,
      name: name.value,
      bio: bio.value,
      phone: phone.value
    };
    this.userService.upsertEntity(user)
      .subscribe((response: UserModel): void => {
        response.username = this.user.username;
        this.user = response;
        this.applicationConfig.user!.name = user.name;
        this.formGroup.patchValue({
          ...this.user,
          username: this.formGroup.controls.username.getRawValue()
        });
        this.toastrProvider.showSuccess({
          detail: 'The users information has been successfully updated.'
        });
      });
  }

  changePassword(): void {
    const options: ChangePasswordModalOptions = {
      id: this.user.id
    };
    this.modalService.open(ChangePasswordModal, options);
  }

}
