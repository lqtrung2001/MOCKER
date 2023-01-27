import { NgModule } from '@angular/core';
import { PeopleComponent } from '@app/component/people/component/people/people.component';
import { PersonComponent } from '@app/component/people/component/person/person.component';
import { ROUTING } from '@app/component/people/people.routing';
import { PeopleLayoutComponent } from '@app/component/people/people-layout.component';
import { LayoutModule } from '@shared/layout/layout.module';

/**
 * @author Do Quoc Viet
 */

@NgModule({
  declarations: [
    PeopleLayoutComponent,
    PeopleComponent,
    PersonComponent
  ],
  exports: [],
  imports: [
    ROUTING,
    LayoutModule
  ],
  providers: []
})
export class PeopleModule {
}
