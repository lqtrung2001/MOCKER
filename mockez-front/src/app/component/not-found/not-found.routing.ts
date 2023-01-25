/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */
import { RouterModule, Routes } from '@angular/router';
import { NotFoundComponent } from '@app/component/not-found/component/not-found/not-found.component';

const routes: Routes = [
  { path: 'not-found', component: NotFoundComponent }
];

export const ROUTING = RouterModule.forChild(routes);
