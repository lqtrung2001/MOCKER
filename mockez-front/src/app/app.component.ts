import { Component } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';
import { AppConfigProviderService } from '@core/service/app-config-provider.service';
import { SQLTypeService } from '@core/service/sql-type.service';
import { GenerateTypeService } from '@core/service/generate-type.service';
import { SQLType } from '@core/model/sql-type';
import { GenerateType } from '@core/model/generate-type';
import { AuthService } from '@core/service/auth.service';
import { User } from '@core/model/user';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {

  constructor(
    private translateService: TranslateService,
    private sqlTypeService: SQLTypeService,
    private generateTypeService: GenerateTypeService,
    public appConfigProviderService: AppConfigProviderService,
    private authService: AuthService
  ) {
    translateService.setDefaultLang('en');
    translateService.use('en');
    const store = localStorage.getItem('user');
    if (store) {
      const user: User = JSON.parse(store);
      authService.login(user.username, user.password).subscribe((user: User) => {
        sqlTypeService.getSQLTypes().subscribe((sqlTypes: SQLType[]) => {
          appConfigProviderService.sqlTypes = sqlTypes;
        });
        generateTypeService.getGenerateTypes().subscribe((generateTypes: GenerateType[]) => {
          appConfigProviderService.generateTypes = generateTypes;
        });
      });
    }
  }

}
