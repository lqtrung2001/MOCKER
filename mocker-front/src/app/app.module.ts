import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppComponent } from './app.component';
import { CommonModule } from '@angular/common';
import { HTTP_INTERCEPTORS, HttpClientModule } from '@angular/common/http';
import { TRANSLATE } from '@app/app.translate';
import { ReactiveFormsModule } from '@angular/forms';
import { LayoutModule } from '@shared/layout/layout.module';
import { SharedModule } from '@shared/shared.module';
import { AppHttpService } from '@core/service/app-http.service';
import { AppRoutingModule } from '@app/app-routing.module';

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
    useClass: AppHttpService
  }]
})
export class AppModule {
}
