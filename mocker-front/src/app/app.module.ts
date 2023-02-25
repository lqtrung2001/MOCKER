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
import { SharedModule } from '@shared/shared.module';
import { NotFoundModule } from '@app/component/not-found/not-found.module';
import { PeopleModule } from '@app/component/people/people.module';
import { AppHttpService } from '@core/service/app-http.service';
import { ModalModule } from '@shared/modal/modal.module';
import { ProjectModule } from '@app/component/project/project.module';
import { GeneralModule } from '@app/component/general/general.module';
import { SchemaModule } from '@app/component/schema/schema.module';

/**
 * @author Do Quoc Viet
 * @date 05/02/2023
 */

@NgModule({
  bootstrap: [AppComponent],
  declarations: [
    AppComponent
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
    NotFoundModule,
    ProjectModule,
    GeneralModule,
    PeopleModule,
    ModalModule,
    SchemaModule
  ],
  providers: [{
    multi: true,
    provide: HTTP_INTERCEPTORS,
    useClass: AppHttpService
  }]
})
export class AppModule {
}
