import { RouterModule, Routes } from '@angular/router';
import { NavigationComponent } from './component/navigation/navigation.component';

const routes: Routes = [
  { path: '', component: NavigationComponent, resolve: [] }
];

export const ROUTING = RouterModule.forChild(routes);
