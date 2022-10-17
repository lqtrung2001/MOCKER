import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { ROUTING } from './app.routing';
import { GeneralModule } from './general/general.module';
import { CommonModule } from '@angular/common';
import { HttpClientModule } from '@angular/common/http';
import { TRANSLATE } from '@app/app.translate';
import { ReactiveFormsModule } from '@angular/forms';
import { DialogModule } from '@progress/kendo-angular-dialog';
import { LayoutModule } from '@shared/layout/layout.module';
@NgModule({
  declarations: [
    AppComponent,
  ],
  imports: [
    DialogModule,
    BrowserModule,
    CommonModule,
    GeneralModule,
    HttpClientModule,
    ReactiveFormsModule,
    ROUTING,
    TRANSLATE,
    LayoutModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule {
}
