import { Component } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';
import { AppConfigProviderService } from '@core/service/app-config-provider.service';

@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss']
})
export class AppComponent {

  constructor(
    private translateService: TranslateService,
    public appConfigProviderService: AppConfigProviderService
  ) {
    translateService.setDefaultLang('en');
    translateService.use('en');
  }

}
