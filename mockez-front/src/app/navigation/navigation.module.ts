import { NgModule } from '@angular/core';
import { ROUTING } from './navigation.routing';
import { NavigationComponent } from './component/navigation/navigation.component';

@NgModule({
  imports: [ROUTING],
  declarations: [
    NavigationComponent
  ],
  providers: []
})
export class NavigationModule {
}
