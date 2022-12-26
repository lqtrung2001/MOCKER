import { NgModule } from '@angular/core';
import { PersonsComponent } from '@app/component/person/component/persons/persons.component';
import { SharedModule } from '@shared/shared.module';
import { NgForOf, NgIf, UpperCasePipe } from '@angular/common';
import { PersonComponent } from '@app/component/person/component/person/person.component';
import { RouterLinkWithHref } from '@angular/router';
import { ReactiveFormsModule } from '@angular/forms';
import { TranslateModule } from '@ngx-translate/core';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@NgModule({
  imports: [
    SharedModule,
    NgForOf,
    UpperCasePipe,
    RouterLinkWithHref,
    ReactiveFormsModule,
    TranslateModule,
    NgIf
  ],
  declarations: [
    PersonsComponent,
    PersonComponent
  ],
  exports: [],
  providers: []
})
export class PersonModule {
}
