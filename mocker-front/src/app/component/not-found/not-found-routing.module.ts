import { RouterModule, Routes } from '@angular/router';
import { NotFoundComponent } from '@app/component/not-found/component/not-found/not-found.component';
import { NgModule } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

const routes: Routes = [
  { path: '', component: NotFoundComponent }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class NotFoundRoutingModule {
}
