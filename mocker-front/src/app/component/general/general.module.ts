import { NgModule } from '@angular/core';
import { GeneralComponent } from '@app/component/general/component/general/general.component';
import { GeneralLayoutComponent } from '@app/component/general/general-layout.component';
import { LayoutModule } from '@shared/layout/layout.module';
import { SharedModule } from '@shared/shared.module';
import { TranslateModule } from '@ngx-translate/core';
import { ReactiveFormsModule } from '@angular/forms';
import { NgIf } from '@angular/common';
import { GeneralRoutingModule } from '@app/component/general/general-routing.module';

/**
 * @author Do Quoc Viet
 */

@NgModule({
  declarations: [
    GeneralLayoutComponent,
    GeneralComponent
  ],
  exports: [],
  imports: [
    GeneralRoutingModule,
    LayoutModule,
    SharedModule,
    TranslateModule,
    ReactiveFormsModule,
    NgIf
  ],
  providers: []
})
export class GeneralModule {
}
