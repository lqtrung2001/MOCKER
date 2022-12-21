import { NgModule } from '@angular/core';
import { ProfileComponent } from '@app/component/profile/component/profile/profile.component';
import { DatePipe, NgIf, UpperCasePipe } from '@angular/common';
import { ReactiveFormsModule } from '@angular/forms';
import { ChangePasswordModal } from '@app/component/profile/modal/change-password/change-password.modal';

@NgModule({
  imports: [
    UpperCasePipe,
    ReactiveFormsModule,
    DatePipe,
    NgIf
  ],
  declarations: [
    ProfileComponent,
    ChangePasswordModal
  ],
  exports: [],
  providers: []
})
export class ProfileModule {
}
