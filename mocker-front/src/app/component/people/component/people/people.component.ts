import { AbstractComponent } from '@core/common/abstract.component';
import { Component, Injector, OnInit } from '@angular/core';
import { UserModel } from '@core/domain/model/entity/user.model';
import { UserService } from '@core/service/user.service';
import { CreateAction, Grid, GridValue } from '@shared/component/grid/grid.component';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-people',
  templateUrl: 'people.component.html',
  styleUrls: ['people.component.scss']
})
export class PeopleComponent extends AbstractComponent implements OnInit {
  grid: Grid;

  constructor(
    injector: Injector,
    private userService: UserService
  ) {
    super(injector);
  }

  ngOnInit(): void {
    this.userService.getEntities().subscribe((people: UserModel[]): void => {
      this.grid = {
        columns: [
          {
            label: this.translateService.instant('component.people.name'),
            key: 'name',
            isSearched: true
          },
          {
            label: this.translateService.instant('component.people.bio'),
            key: 'bio'
          },
          {
            label: this.translateService.instant('component.people.email'),
            key: 'email',
            isSearched: true
          },
          {
            label: this.translateService.instant('component.people.phone'),
            key: 'phone'
          }
        ],
        values: people.map((user: UserModel): GridValue => ({
          name: {
            value: user.name,
            click: () => this.router.navigate([`/people/${user.id}`]),
            html: `<a class='tw-font-medium hover:tw-underline tw-cursor-pointer tw-text-blue tw-uppercase'></a>`
          },
          bio: this.truncatePipe.transform(user.bio, 50),
          email: {
            value: user.username,
            click: () => this.router.navigate([`/people/${user.id}`]),
            html: `<a class='tw-font-medium hover:tw-underline tw-cursor-pointer tw-text-blue'></a>`
          },
          phone: user.phone
        }))
      };
    });
  }

  get createAction(): CreateAction {
    return {
      click: () => this.router.navigate([`/people/new`]),
      content: 'component.people.create'
    };
  }

}
