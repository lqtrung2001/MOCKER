import { Component } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';
import { AppConfigService } from '@core/service/app-config.service';
import { AuthService } from '@core/service/auth.service';
import { Router } from '@angular/router';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'moc-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss']
})
export class AppComponent {

  constructor(
    private translateService: TranslateService,
    public appConfigService: AppConfigService,
    public authService: AuthService,
    private router: Router
  ) {
    const language: string = 'en';
    translateService.setDefaultLang(language);
    translateService.use(language);
    authService.checkAuth().subscribe((success: boolean) => {
      if (success) {
        // User is authenticated
        this.appConfigService.user = this.appConfigService.userLocalStorage;
      } else {
        // User is not authenticated
        this.router.navigate(['/auth/login']).then(() => {
          console.debug('User is not authenticated');
        });
      }
    });
  }

}
