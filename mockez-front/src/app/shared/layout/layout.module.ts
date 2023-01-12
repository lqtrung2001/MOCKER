import { NgModule } from '@angular/core';
import { ModuleComponent } from '@shared/layout/component/module/module.component';
import { TranslateModule } from '@ngx-translate/core';
import { NgForOf, NgIf, TitleCasePipe, UpperCasePipe } from '@angular/common';
import { SharedModule } from '@shared/shared.module';
import { RouterLinkActive, RouterLinkWithHref } from '@angular/router';
import { NavigationComponent } from '@shared/layout/component/navigation/navigation.component';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@NgModule({
  declarations: [
    ModuleComponent,
    NavigationComponent
  ],
  imports: [
    TranslateModule,
    UpperCasePipe,
    TitleCasePipe,
    SharedModule,
    NgIf,
    RouterLinkWithHref,
    RouterLinkActive,
    NgForOf
  ],
  exports: [
    ModuleComponent,
    NavigationComponent
  ],
  providers: []
})
export class LayoutModule {
}
