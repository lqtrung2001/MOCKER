import { ErrorHandler, NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppComponent } from './app.component';
import { CommonModule } from '@angular/common';
import { HTTP_INTERCEPTORS, HttpClientModule } from '@angular/common/http';
import { TRANSLATE } from '@app/app.translate';
import { ReactiveFormsModule } from '@angular/forms';
import { LayoutModule } from '@shared/layout/layout.module';
import { SharedModule } from '@shared/shared.module';
import { AbstractService } from '@core/service/abstract.service';
import { AppRoutingModule } from '@app/app-routing.module';
import { ErrorHandlerConfig } from '@core/config/error-handler.config';

/**
 * @author Do Quoc Viet
 */

@NgModule({
  bootstrap: [AppComponent],
  declarations: [
    AppComponent
  ],
  exports: [],
  imports: [
    AppRoutingModule,
    BrowserModule,
    CommonModule,
    HttpClientModule,
    ReactiveFormsModule,
    TRANSLATE,
    LayoutModule,
    SharedModule
  ],
  providers: [{
    multi: true,
    provide: HTTP_INTERCEPTORS,
    useClass: AbstractService
  }, {
    provide: ErrorHandler,
    useClass: ErrorHandlerConfig
  }]
})
export class AppModule {
}
