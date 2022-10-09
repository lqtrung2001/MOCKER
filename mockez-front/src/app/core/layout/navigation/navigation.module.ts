import { NgModule } from '@angular/core';
import { ROUTING } from './navigation.routing';
import { NavigationComponent } from './component/navigation/navigation.component';
import { TranslateModule } from '@ngx-translate/core';
import { TitleCasePipe, UpperCasePipe } from '@angular/common';

@NgModule({
  imports: [ROUTING, TranslateModule, UpperCasePipe, TitleCasePipe],
  declarations: [
    NavigationComponent
  ],
  exports: [
    NavigationComponent
  ],
  providers: []
})
export class NavigationModule {
}
