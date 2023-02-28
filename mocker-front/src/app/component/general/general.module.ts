import { NgModule } from '@angular/core';
import { ROUTING } from '@app/component/general/general.routing';
import { GeneralComponent } from '@app/component/general/component/general/general.component';
import { GeneralLayoutComponent } from '@app/component/general/general-layout.component';
import { LayoutModule } from '@shared/layout/layout.module';
import { SharedModule } from '@shared/shared.module';
import { TranslateModule } from '@ngx-translate/core';
import { ReactiveFormsModule } from '@angular/forms';
import { NgIf } from '@angular/common';

/**
 * @author Do Quoc Viet
 * @date 05/02/2023
 */

@NgModule({
  declarations: [
    GeneralLayoutComponent,
    GeneralComponent
  ],
  exports: [],
  imports: [
    ROUTING,
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
