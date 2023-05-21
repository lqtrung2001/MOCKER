import { AbstractModal } from '@core/common/abstract.modal';
import { Component, Injector } from '@angular/core';
import { FormControl } from '@angular/forms';
import { UserService } from '@core/service/user.service';
import { UserModel } from '@core/domain/model/entity/user.model';

/**
 * @author Do Quoc Viet
 */

export interface AddUserModalOptions {
  addedUserIds: string[];
}

@Component({
  selector: 'moc-add-user-modal',
  templateUrl: 'add-user.modal.html',
  styleUrls: ['add-user.modal.scss']
})
export class AddUserModal extends AbstractModal {
  override options: AddUserModalOptions;
  searchFormControl: FormControl;
  users: UserModel[] = [];
  timeout: any;

  constructor(
    injector: Injector,
    private userService: UserService
  ) {
    super(injector);
    this.searchFormControl = this.formBuilder.control(undefined, []);
    this.searchFormControl.valueChanges.subscribe((value: string): void => {
      if (!value) {
        return;
      }
      this.users = [];
      clearTimeout(this.timeout);
      this.timeout = setTimeout((): void => {
        this.userService.findByCriteria(value).subscribe((users: UserModel[]): void => {
          this.users = users.filter((user: UserModel): boolean => !this.options.addedUserIds.find((userId: string): boolean => user.id === userId));
        });
      }, 1000);
    });
  }

}
