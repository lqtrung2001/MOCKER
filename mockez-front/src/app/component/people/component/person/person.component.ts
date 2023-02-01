import { AbstractComponent } from '@core/class/abstract.component';
import { Component, Injector } from '@angular/core';
import { User } from '@core/model/user';
import { UserService } from '@core/service/user.service';
import { FormControl, FormGroup, Validators } from '@angular/forms';

/**
 * @author Do Quoc Viet
 */

type Controls = {
  name: FormControl;
  bio: FormControl;
  job: FormControl;
  department: FormControl;
  organisation: FormControl;
  username: FormControl;
  phone: FormControl;
  gender: FormControl;
  dob: FormControl;
  address: FormControl;
}

@Component({
  selector: 'moc-person',
  templateUrl: 'person.component.html',
  styleUrls: ['person.component.scss']
})
export class PersonComponent extends AbstractComponent {
  user: User;
  avatarUrl: string = 'https://scontent.fdad1-4.fna.fbcdn.net/v/t39.30808-6/323627768_1223110124964406_6535970400770548959_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=wnzDKe9czkgAX864pi_&_nc_ht=scontent.fdad1-4.fna&oh=00_AfBPrxKmKE9nBXKR8V1P_9lp61Qwo096m5zyPi_Fddx_tA&oe=63DCE1C6';
  coverUrl: string = 'https://scontent.fdad1-4.fna.fbcdn.net/v/t39.30808-6/300187364_1956145841253422_8088521283431803214_n.jpg?stp=dst-jpg_p720x720&_nc_cat=103&ccb=1-7&_nc_sid=e3f864&_nc_ohc=_I4AwwLE-mEAX_iTl9H&_nc_ht=scontent.fdad1-4.fna&oh=00_AfC8yDwqqLf2zTEtksXGb15uVGlTK94kZE1r7yfaojY9NA&oe=63DD5243';
  formGroup: FormGroup<Controls>;

  constructor(
    injector: Injector,
    private userService: UserService
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      name: this.formBuilder.control(undefined, [Validators.required]),
      bio: this.formBuilder.control(undefined, [Validators.required]),
      job: this.formBuilder.control(undefined, [Validators.required]),
      department: this.formBuilder.control(undefined, [Validators.required]),
      organisation: this.formBuilder.control(undefined, [Validators.required]),
      username: this.formBuilder.control(undefined, [Validators.required, Validators.email]),
      phone: this.formBuilder.control(undefined, [Validators.required]),
      gender: this.formBuilder.control(undefined, [Validators.required]),
      dob: this.formBuilder.control(undefined, [Validators.required]),
      address: this.formBuilder.control(undefined, [Validators.required])
    });
    const id: string = this.activatedRoute.snapshot.paramMap.get('id')!;
    this.userService.getUser(id).subscribe((user: User) => {
      this.user = user;
      this.formGroup.patchValue(user);
    });
  }
}
