import { RouterModule, Routes } from '@angular/router';
import { GeneralComponent } from '@app/component/general/component/general/general.component';
import { AuthGuard } from '@app/auth.guard';

/**
 * @author Do Quoc Viet
 */

const routes: Routes = [
  {
    path: 'general', component: GeneralComponent, canActivate: [AuthGuard], children: []
  }
];

export const ROUTING = RouterModule.forChild(routes);
