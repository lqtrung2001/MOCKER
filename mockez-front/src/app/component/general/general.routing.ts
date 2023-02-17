import { RouterModule, Routes } from '@angular/router';
import { AuthGuard } from '@app/auth.guard';
import { GeneralComponent } from '@app/component/general/component/general/general.component';
import { GeneralLayoutComponent } from '@app/component/general/general-layout.component';

/**
 * @author Do Quoc Viet
 * @date 05/02/2023
 */

const routes: Routes = [
  {
    path: '', component: GeneralLayoutComponent, canActivate: [AuthGuard], children: [
      { path: '', component: GeneralComponent }
    ]
  }
];

export const ROUTING = RouterModule.forChild(routes);
