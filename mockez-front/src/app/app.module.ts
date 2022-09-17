import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { ROUTING } from './app.routing';
import { NavigationModule } from './core/layout/navigation/navigation.module';
import { GeneralModule } from './general/general.module';

@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule,
    ROUTING,
    NavigationModule,
    GeneralModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
