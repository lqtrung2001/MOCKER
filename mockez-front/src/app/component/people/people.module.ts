import { NgModule } from '@angular/core';
import { PeopleComponent } from '@app/component/people/component/people/people.component';
import { PersonComponent } from '@app/component/people/component/person/person.component';
import { ROUTING } from '@app/component/people/people.routing';
import { PeopleLayoutComponent } from '@app/component/people/people-layout.component';
import { LayoutModule } from '@shared/layout/layout.module';
import { TranslateModule } from '@ngx-translate/core';
import { DatePipe } from '@angular/common';
import { SharedModule } from '@shared/shared.module';
import { ReactiveFormsModule } from '@angular/forms';

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
    LayoutModule,
    TranslateModule,
    DatePipe,
    SharedModule,
    ReactiveFormsModule
  ],
  providers: []
})
export class PeopleModule {
}
