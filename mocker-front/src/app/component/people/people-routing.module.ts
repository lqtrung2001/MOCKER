import { RouterModule, Routes } from '@angular/router';
import { PeopleComponent } from '@app/component/people/component/people/people.component';
import { PersonComponent } from '@app/component/people/component/person/person.component';
import { PeopleLayoutComponent } from '@app/component/people/people-layout.component';
import { AuthGuard } from '@app/auth.guard';
import { NgModule } from '@angular/core';

/**
 * @author Do Quoc viet
 */

const routes: Routes = [
  {
    path: '', component: PeopleLayoutComponent, canActivate: [AuthGuard], children: [
      { path: ':id', component: PersonComponent }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class PeopleRoutingModule {
}
