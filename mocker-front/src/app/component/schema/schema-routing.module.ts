import { RouterModule, Routes } from '@angular/router';
import { SchemaLayoutComponent } from '@app/component/schema/schema-layout.component';
import { SchemasComponent } from '@app/component/schema/component/schemas/schemas.component';
import { SchemaComponent } from '@app/component/schema/component/schema/schema.component';
import { AuthGuard } from '@app/auth.guard';
import { NgModule } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

const routes: Routes = [
  {
    path: '', component: SchemaLayoutComponent, children: [
      { path: '', component: SchemasComponent },
      { path: 'new', component: SchemaComponent },
      { path: ':id', component: SchemaComponent }
    ], canActivate: [AuthGuard]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class SchemaRoutingModule {
}
