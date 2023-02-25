import { RouterModule, Routes } from '@angular/router';
import { SchemaLayoutComponent } from '@app/component/schema/schema-layout.component';
import { SchemasComponent } from '@app/component/schema/component/schemas/schemas.component';
import { SchemaComponent } from '@app/component/schema/component/schema/schema.component';
import { AuthGuard } from '@app/auth.guard';

/**
 * @author Do Quoc Viet
 * @date 22/02/2023
 */

const routes: Routes = [
  {
    path: 'schema', component: SchemaLayoutComponent, children: [
      { path: '', component: SchemasComponent },
      { path: 'new', component: SchemaComponent },
      { path: ':id', component: SchemaComponent }
    ], canActivate: [AuthGuard]
  }
];

export const ROUTING = RouterModule.forChild(routes);
