import { NgModule } from '@angular/core';
import { ProfileComponent } from '@app/component/profile/component/profile/profile.component';
import { DatePipe, UpperCasePipe } from '@angular/common';
import { ReactiveFormsModule } from '@angular/forms';

@NgModule({
  imports: [
    UpperCasePipe,
    ReactiveFormsModule,
    DatePipe
  ],
  declarations: [
    ProfileComponent
  ],
  exports: [],
  providers: []
})
export class ProfileModule {
}
