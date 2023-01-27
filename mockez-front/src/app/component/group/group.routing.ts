import { RouterModule, Routes } from '@angular/router';
import { GroupsComponent } from '@app/component/group/component/groups/groups.component';
import { GroupComponent } from '@app/component/group/component/group/group.component';
import { GroupLayoutComponent } from '@app/component/group/group-layout.component';
import { AuthGuard } from '@app/auth.guard';

/**
 * @author Do Quoc Viet
 */

const routes: Routes = [
  {
    path: 'group', component: GroupLayoutComponent, canActivate: [AuthGuard], children: [
      { path: '', component: GroupsComponent },
      { path: ':id', component: GroupComponent }
    ]
  }
];

export const ROUTING = RouterModule.forChild(routes);
