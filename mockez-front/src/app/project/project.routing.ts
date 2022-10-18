import { RouterModule, Routes } from '@angular/router';
import { ProjectComponent } from './component/project/project.component';

const routes: Routes = [
  { path: '', component:  ProjectComponent, resolve: [] }
];

export const ROUTING = RouterModule.forChild(routes);
