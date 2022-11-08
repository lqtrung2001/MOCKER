import { NgModule } from '@angular/core';
import { LoginComponent } from '@app/login/component/login/login.component';
import { ROUTING } from '@app/login/login.routing';

@NgModule({
  declarations: [
    LoginComponent
  ],
  imports: [
    ROUTING
  ],
  providers: [],
  exports: []
})
export class LoginModule {
}
