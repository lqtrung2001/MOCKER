import { NgModule } from '@angular/core';
import { TranslateModule } from '@ngx-translate/core';
import { NgForOf, NgIf, NgOptimizedImage, TitleCasePipe, UpperCasePipe } from '@angular/common';
import { SharedModule } from '@shared/shared.module';
import {RouterLink, RouterLinkActive, RouterLinkWithHref} from '@angular/router';
import { NavigationComponent } from '@shared/layout/component/navigation/navigation.component';

/**
 * @author Do Quoc Viet
 */

@NgModule({
  declarations: [
    NavigationComponent
  ],
  exports: [
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
        NgForOf,
        NgOptimizedImage,
        RouterLink
    ],
  providers: []
})
export class LayoutModule {
}
