import { NgModule } from '@angular/core';
import { GeneralComponent } from '@app/component/general/component/general/general.component';
import { ROUTING } from '@app/component/general/general.routing';

/**
 * @author Do Quoc Viet
 */

@NgModule({
  declarations: [
    GeneralComponent
  ],
  imports: [
    ROUTING
  ],
  exports: [],
  providers: []
})
export class GeneralModule {
}
