import { NgModule } from '@angular/core';
import { NotFoundComponent } from '@app/component/not-found/component/not-found/not-found.component';
import { TranslateModule } from '@ngx-translate/core';
import { SharedModule } from '@shared/shared.module';
import { LayoutModule } from '@shared/layout/layout.module';
import { NotFoundRoutingModule } from '@app/component/not-found/not-found-routing.module';

/**
 * @author Do Quoc Viet
 */

@NgModule({
  declarations: [NotFoundComponent],
  exports: [],
  imports: [
    NotFoundRoutingModule,
    TranslateModule,
    SharedModule,
    LayoutModule
  ],
  providers: []
})
export class NotFoundModule {
}
