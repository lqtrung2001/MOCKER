import { NgModule } from '@angular/core';
import { GeneralComponent } from './component/general/general.component';
import { ROUTING } from './general.routing';
import { NgIf } from '@angular/common';
import { PopupComponent } from './component/popup/popup.component';

@NgModule({
  imports: [ROUTING, NgIf],
  declarations: [
    GeneralComponent,
    PopupComponent
  ],
  exports: [
    GeneralComponent
  ],
  providers: []
})
export class GeneralModule {
}
