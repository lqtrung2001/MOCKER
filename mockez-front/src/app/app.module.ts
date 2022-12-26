import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { ROUTING } from './app.routing';
import { GeneralModule } from './component/general/general.module';
import { CommonModule } from '@angular/common';
import { HTTP_INTERCEPTORS, HttpClientModule } from '@angular/common/http';
import { TRANSLATE } from '@app/app.translate';
import { ReactiveFormsModule } from '@angular/forms';
import { LayoutModule } from '@shared/layout/layout.module';
import { ProjectModule } from '@app/component/project/project.module';
import { SchemaModule } from '@app/component/schema/schema.module';
import { StoreModule } from '@ngrx/store';
import { AuthModule } from '@app/component/auth/auth.module';
import { DialogModal } from '@shared/modal/modal-provider/dialog/dialog.modal';
import { ApplicationHttpInterceptorService } from '@core/service/application-http-interceptor.service';
import { TableModule } from '@app/component/table/table.module';
import { ProfileModule } from '@app/component/profile/profile.module';
import { GroupModule } from '@app/component/group/group.module';
import { PersonModule } from '@app/component/person/person.module';
import { MarkdownModule } from 'ngx-markdown';
import { SharedModule } from '@shared/shared.module';

@NgModule({
  declarations: [
    AppComponent,
    DialogModal
  ],
  imports: [
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
    TableModule,
    ProfileModule,
    GroupModule,
    PersonModule,
    StoreModule.forRoot({}),
    MarkdownModule.forRoot(),
    SharedModule
  ],
  providers: [{
    provide: HTTP_INTERCEPTORS,
    useClass: ApplicationHttpInterceptorService,
    multi: true
  }],
  bootstrap: [AppComponent]
})
export class AppModule {
}
