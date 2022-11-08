import { RouterModule, Routes } from '@angular/router';
import { GeneralComponent } from './component/general/general.component';

const routes: Routes = [
  { path: '', component: GeneralComponent, resolve: [] }
];

export const ROUTING = RouterModule.forChild(routes);
