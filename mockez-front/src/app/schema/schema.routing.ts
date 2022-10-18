import { RouterModule, Routes } from '@angular/router';
import { SchemaComponent } from './component/schema/schema.component';

const routes: Routes = [
  { path: '', component:  SchemaComponent, resolve: [] }
];

export const ROUTING = RouterModule.forChild(routes);
