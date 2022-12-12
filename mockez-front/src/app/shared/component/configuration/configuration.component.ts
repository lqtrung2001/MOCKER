import { Component } from '@angular/core';
import { DataProviderService } from '@shared/service/data-provider.service';
import { FormatEnum } from '@core/config/format.enum';

@Component({
  selector: 'app-configuration',
  templateUrl: './configuration.component.html',
  styleUrls: ['./configuration.component.scss']
})
export class ConfigurationComponent {

  isSelectFormat: boolean = false;

  constructor(
    public dataProvider: DataProviderService
  ) {
  }
  changeFormat(format: FormatEnum) {
    this.dataProvider.configuration.get('format')?.setValue(format);
  }
}
