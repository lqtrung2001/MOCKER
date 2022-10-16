import { NgModule } from '@angular/core';
import { GeneralComponent } from './component/general/general.component';
import { ROUTING } from './general.routing';
import { ReactiveFormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { TranslateModule } from '@ngx-translate/core';
import { SharedModule } from '@shared/shared.module';

@NgModule({
  imports: [
    ROUTING,
    CommonModule,
    ReactiveFormsModule,
    TranslateModule,
    SharedModule
  ],
  declarations: [
    GeneralComponent,
  ],
  exports: [
    GeneralComponent
  ],
  providers: []
})
export class GeneralModule {
}
