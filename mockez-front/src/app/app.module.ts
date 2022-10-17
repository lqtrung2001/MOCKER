import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { ROUTING } from './app.routing';
import { NavigationModule } from '@core/layout/navigation/navigation.module';
import { GeneralModule } from './general/general.module';
import { CommonModule } from '@angular/common';
import { HttpClientModule } from '@angular/common/http';
import { TRANSLATE } from '@app/app.translate';
@NgModule({
  declarations: [
    AppComponent,
  ],
  imports: [
    CommonModule,
    HttpClientModule,
    BrowserModule,
    ROUTING,
    TRANSLATE,
    NavigationModule,
    GeneralModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule {
}
