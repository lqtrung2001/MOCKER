import { NgModule } from '@angular/core';
import { NotFoundComponent } from '@app/component/not-found/component/not-found/not-found.component';
import { ROUTING } from '@app/component/not-found/not-found.routing';
import { TranslateModule } from '@ngx-translate/core';
import { SharedModule } from '@shared/shared.module';
import { LayoutModule } from '@shared/layout/layout.module';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@NgModule({
  declarations: [NotFoundComponent],
  exports: [],
  imports: [
    ROUTING,
    TranslateModule,
    SharedModule,
    LayoutModule
  ],
  providers: []
})
export class NotFoundModule {
}
