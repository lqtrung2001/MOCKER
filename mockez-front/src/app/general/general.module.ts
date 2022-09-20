import { NgModule } from '@angular/core';
import { GeneralComponent } from './component/general/general.component';
import { ROUTING } from './general.routing';
import { NgIf } from '@angular/common';

@NgModule({
  imports: [ROUTING, NgIf],
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
