import { RouterModule, Routes } from '@angular/router';
import { GroupLayoutComponent } from '@app/component/group/group-layout.component';
import { AuthGuard } from '@app/auth.guard';
import { GroupsComponent } from '@app/component/group/component/groups/groups.component';
import { GroupComponent } from '@app/component/group/component/group/group.component';
import { NgModule } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

const routes: Routes = [
  {
    path: '', component: GroupLayoutComponent, canActivate: [AuthGuard], children: [
      { path: '', component: GroupsComponent },
      { path: ':id', component: GroupComponent }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class GroupRoutingModule {
}
