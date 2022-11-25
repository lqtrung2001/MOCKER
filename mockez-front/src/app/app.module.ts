import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { ROUTING } from './app.routing';
import { GeneralModule } from './general/general.module';
import { CommonModule } from '@angular/common';
import { HTTP_INTERCEPTORS, HttpClientModule } from '@angular/common/http';
import { TRANSLATE } from '@app/app.translate';
import { ReactiveFormsModule } from '@angular/forms';
import { DialogModule } from '@progress/kendo-angular-dialog';
import { LayoutModule } from '@shared/layout/layout.module';
import { ProjectModule } from '@app/project/project.module';
import { SchemaModule } from '@app/schema/schema.module';
import { StoreModule } from '@ngrx/store';
import { AuthModule } from '@app/auth/auth.module';
import { DialogModal } from '@shared/modal/modal-provider/dialog/dialog.modal';
import { AuthHttpInterceptor } from '@core/service/auth-http-interceptor.service';

@NgModule({
  declarations: [
    AppComponent,
    DialogModal
  ],
  imports: [
    DialogModule,
    BrowserModule,
    CommonModule,
    AuthModule,
    HttpClientModule,
    ReactiveFormsModule,
    ROUTING,
    TRANSLATE,
    LayoutModule,
    ProjectModule,
    GeneralModule,
    SchemaModule,
    StoreModule.forRoot({})
  ],
  providers: [{
    provide: HTTP_INTERCEPTORS,
    useClass: AuthHttpInterceptor,
    multi: true
  }],
  bootstrap: [AppComponent]
})
export class AppModule {
}
