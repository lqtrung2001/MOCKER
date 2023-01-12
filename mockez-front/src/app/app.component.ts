import { Component } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';
import { AppConfigService } from '@core/service/app-config.service';
import { AuthService } from './core/service/auth.service';
import { Observable, of } from 'rxjs';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss']
})
export class AppComponent {

  $authorized: Observable<boolean>;

  constructor(
    private translateService: TranslateService,
    public appConfigService: AppConfigService,
    public authService: AuthService
  ) {
    const language: string = 'en';
    translateService.setDefaultLang(language);
    translateService.use(language);
    authService.checkAuth().subscribe((success: boolean) => {
        this.$authorized = of(success);
      }
    );
  }

}
