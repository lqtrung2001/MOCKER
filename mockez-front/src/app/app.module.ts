import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { ROUTING } from './app.routing';
import { CommonModule } from '@angular/common';
import { HTTP_INTERCEPTORS, HttpClientModule } from '@angular/common/http';
import { TRANSLATE } from '@app/app.translate';
import { ReactiveFormsModule } from '@angular/forms';
import { LayoutModule } from '@shared/layout/layout.module';
import { StoreModule } from '@ngrx/store';
import { AuthModule } from '@app/component/auth/auth.module';
import { DialogModal } from '@shared/modal/modal-provider/dialog/dialog.modal';
import { ApplicationHttpInterceptorService } from '@core/service/application-http-interceptor.service';
import { MarkdownModule } from 'ngx-markdown';
import { SharedModule } from '@shared/shared.module';
import { FeatureModule } from '@app/component/feature/feature.module';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@NgModule({
  bootstrap: [AppComponent],
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
    FeatureModule,
    StoreModule.forRoot({}),
    MarkdownModule.forRoot(),
    SharedModule
  ],
  providers: [{
    provide: HTTP_INTERCEPTORS,
    useClass: ApplicationHttpInterceptorService,
    multi: true
  }]
})
export class AppModule {
}
