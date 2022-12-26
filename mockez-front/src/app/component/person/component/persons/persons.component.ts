import { Component } from '@angular/core';
import { User } from '@core/model/user';
import { UserService } from '@core/service/user.service';
import { FormBuilder, FormControl } from '@angular/forms';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'app-persons',
  templateUrl: 'persons.component.html',
  styleUrls: ['persons.component.scss']
})
export class PersonsComponent {

  storage: User[] = [];
  users: User[] = [];
  filter: FormControl;

  constructor(
    private userService: UserService,
    private formBuilder: FormBuilder
  ) {
    this.filter = formBuilder.control('');
    this.filter.valueChanges.subscribe((value: string) => {
      this.users = this.storage.filter((user: User) => user.name?.toUpperCase().includes(value.toUpperCase()));
    });
    userService.getUsers().subscribe((users: User[]) => {
      this.users = users;
      this.storage = users;
    });
  }

}
