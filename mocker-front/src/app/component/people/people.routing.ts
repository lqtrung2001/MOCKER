import { RouterModule, Routes } from '@angular/router';
import { PeopleComponent } from '@app/component/people/component/people/people.component';
import { PersonComponent } from '@app/component/people/component/person/person.component';
import { PeopleLayoutComponent } from '@app/component/people/people-layout.component';
import { AuthGuard } from '@app/auth.guard';

/**
 * @author Do Quoc viet
 */

const routes: Routes = [
  {
    path: 'people', component: PeopleLayoutComponent, canActivate: [AuthGuard], children: [
      { path: '', component: PeopleComponent },
      { path: ':id', component: PersonComponent }
    ]
  }
];

export const ROUTING = RouterModule.forChild(routes);
