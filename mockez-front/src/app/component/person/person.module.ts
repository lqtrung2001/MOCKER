import { NgModule } from '@angular/core';
import { PersonsComponent } from '@app/component/person/component/persons/persons.component';
import { SharedModule } from '@shared/shared.module';
import { NgForOf } from '@angular/common';

@NgModule({
  imports: [
    SharedModule,
    NgForOf
  ],
  declarations: [
    PersonsComponent
  ],
  exports: [],
  providers: []
})
export class PersonModule {
}
