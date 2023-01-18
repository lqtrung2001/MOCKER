import { Component } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';
import { AppConfigService } from '@core/service/app-config.service';

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
    public appConfigService: AppConfigService
  ) {
    const language: string = 'en';
    translateService.setDefaultLang(language);
    translateService.use(language);
  }

}
