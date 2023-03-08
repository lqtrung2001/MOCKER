import { NgModule } from '@angular/core';
import { PeopleComponent } from '@app/component/people/component/people/people.component';
import { PersonComponent } from '@app/component/people/component/person/person.component';
import { PeopleLayoutComponent } from '@app/component/people/people-layout.component';
import { LayoutModule } from '@shared/layout/layout.module';
import { TranslateModule } from '@ngx-translate/core';
import { DatePipe, NgIf } from '@angular/common';
import { SharedModule } from '@shared/shared.module';
import { ReactiveFormsModule } from '@angular/forms';
import { PeopleRoutingModule } from '@app/component/people/people-routing.module';

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
    PeopleRoutingModule,
    LayoutModule,
    TranslateModule,
    DatePipe,
    SharedModule,
    ReactiveFormsModule,
    NgIf
  ],
  providers: []
})
export class PeopleModule {
}
