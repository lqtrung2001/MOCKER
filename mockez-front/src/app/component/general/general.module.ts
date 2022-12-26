import { NgModule } from '@angular/core';
import { GeneralComponent } from './component/general/general.component';
import { ROUTING } from './general.routing';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { TranslateModule } from '@ngx-translate/core';
import { SharedModule } from '@shared/shared.module';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@NgModule({
  imports: [
    ROUTING,
    CommonModule,
    ReactiveFormsModule,
    TranslateModule,
    SharedModule,
    FormsModule
  ],
  declarations: [
    GeneralComponent
  ],
  exports: [
    GeneralComponent
  ],
  providers: []
})
export class GeneralModule {
}
