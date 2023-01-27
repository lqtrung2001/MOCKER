import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppComponent } from './app.component';
import { ROUTING } from './app.routing';
import { CommonModule } from '@angular/common';
import { HTTP_INTERCEPTORS, HttpClientModule } from '@angular/common/http';
import { TRANSLATE } from '@app/app.translate';
import { ReactiveFormsModule } from '@angular/forms';
import { LayoutModule } from '@shared/layout/layout.module';
import { AuthModule } from '@app/component/auth/auth.module';
import { DialogModal } from '@shared/modal/modal-provider/dialog/dialog.modal';
import { SharedModule } from '@shared/shared.module';
import { NotFoundModule } from '@app/component/not-found/not-found.module';
import { WorkspaceModule } from '@app/component/workspace/workspace.module';
import { GeneralModule } from '@app/component/general/general.module';
import { GroupModule } from '@app/component/group/group.module';
import { PeopleModule } from '@app/component/people/people.module';
import { AppHttpService } from '@core/service/app-http.service';

/**
 * @author Do Quoc Viet
 */

@NgModule({
  bootstrap: [AppComponent],
  declarations: [
    AppComponent,
    DialogModal
  ],
  exports: [],
  imports: [
    BrowserModule,
    CommonModule,
    HttpClientModule,
    ReactiveFormsModule,
    ROUTING,
    TRANSLATE,
    AuthModule,
    LayoutModule,
    SharedModule,
    GeneralModule,
    NotFoundModule,
    WorkspaceModule,
    GroupModule,
    PeopleModule
  ],
  providers: [{
    multi: true,
    provide: HTTP_INTERCEPTORS,
    useClass: AppHttpService
  }]
})
export class AppModule {
}
