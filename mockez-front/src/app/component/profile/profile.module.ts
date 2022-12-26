import { NgModule } from '@angular/core';
import { ProfileComponent } from '@app/component/profile/component/profile/profile.component';
import { DatePipe, NgIf, UpperCasePipe } from '@angular/common';
import { ReactiveFormsModule } from '@angular/forms';
import { ChangePasswordModal } from '@app/component/profile/modal/change-password/change-password.modal';
import { TranslateModule } from '@ngx-translate/core';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@NgModule({
  imports: [
    UpperCasePipe,
    ReactiveFormsModule,
    DatePipe,
    NgIf,
    TranslateModule
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
