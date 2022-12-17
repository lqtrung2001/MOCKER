import { Component } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';
import { ActivatedRoute, Router } from '@angular/router';
import { AuthService } from '@core/service/auth.service';
import { UserService } from '@core/service/user.service';
import { AppConfigProviderService } from '@core/service/app-config-provider.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {

  isAuthenticated: boolean = false;

  constructor(
    private translateService: TranslateService,
    private readonly activeRoute: ActivatedRoute,
    private router: Router,
    private authService: AuthService,
    private userService: UserService,
    public readonly appConfigProviderService: AppConfigProviderService
  ) {
    translateService.setDefaultLang('en');
    translateService.use('en');
  }

}
