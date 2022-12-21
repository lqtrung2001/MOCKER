import { Component } from '@angular/core';
import { TranslateService } from '@ngx-translate/core';
import { AppConfigProviderService } from '@core/service/app-config-provider.service';
import { SQLTypeService } from '@core/service/sql-type.service';
import { GenerateTypeService } from '@core/service/generate-type.service';
import { SQLType } from '@core/model/sql-type';
import { GenerateType } from '@core/model/generate-type';

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
    public appConfigProviderService: AppConfigProviderService
  ) {
    translateService.setDefaultLang('en');
    translateService.use('en');
    sqlTypeService.getSQLTypes().subscribe((sqlTypes: SQLType[]) => {
      appConfigProviderService.sqlTypes = sqlTypes;
    });
    generateTypeService.getGenerateTypes().subscribe((generateTypes: GenerateType[]) => {
      appConfigProviderService.generateTypes = generateTypes;
    });
  }

}
