import { NgModule } from '@angular/core';
import { NavigationComponent } from '@shared/layout/component/navigation/navigation.component';
import { FooterComponent } from '@shared/layout/component/footer/footer.component';
import { TranslateModule } from '@ngx-translate/core';
import { NgIf, TitleCasePipe, UpperCasePipe } from '@angular/common';
import { SharedModule } from '@shared/shared.module';

@NgModule({
  declarations: [
    NavigationComponent,
    FooterComponent
  ],
  imports: [
    TranslateModule,
    UpperCasePipe,
    TitleCasePipe,
    SharedModule,
    NgIf
  ],
  exports: [
    NavigationComponent,
    FooterComponent
  ],
  providers: []
})
export class LayoutModule {
}