import { NgModule } from '@angular/core';
import { GeneralComponent } from './component/general/general.component';
import { ROUTING } from './general.routing';

@NgModule({
  imports: [ROUTING],
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
