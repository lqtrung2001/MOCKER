import { Component } from '@angular/core';
import { User } from '@core/model/user';
import { UserService } from '@core/service/user.service';

@Component({
  selector: 'app-persons',
  templateUrl: './persons.component.html',
  styleUrls: ['./persons.component.scss']
})
export class PersonsComponent {

  users: User[];

  constructor(
    private userService: UserService
  ) {
    this.users = [
      new User(),
      new User(),
      new User(),
      new User(),
      new User(),
      new User(),
      new User(),
      new User(),
      new User(),
      new User()
    ];
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
