import { Component } from '@angular/core';
import { ModalService } from '@shared/modal/modal-service/modal-service.service';
import { DataProviderService } from '@shared/service/data-provider.service';
import { FormatEnum } from '@core/config/format.enum';
import { ConverterService } from '@core/util/converter.service';
import { saveAs } from 'file-saver';
import { ModalProvider } from '@shared/modal/modal-provider/modal-provider.modal';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  selector: 'app-footer',
  templateUrl: 'footer.component.html',
  styleUrls: ['footer.component.scss']
})
export class FooterComponent {

  constructor(
    private dataProvider: DataProviderService,
    private modalService: ModalService,
    private converterService: ConverterService,
    private modalProvider: ModalProvider
  ) {
  }

  public previewOnClick(): void {

  }

  public downloadOnClick(): void {
    const format: FormatEnum = this.dataProvider.configuration.get('format')?.value;
    let blob: Blob;
    switch (format) {
      case FormatEnum.XML:
        blob = new Blob(this.converterService.JSONArrayToXML(this.dataProvider.data));
        break;
      case FormatEnum.CSV:
        blob = new Blob(this.converterService.JSONArrayToCSV(this.dataProvider.data));
        break;
      case FormatEnum.JSON:
        blob = new Blob(this.converterService.JSONArrayToJSON(this.dataProvider.data));
        break;
      case FormatEnum.SQL:
        blob = new Blob(this.converterService.JSONArrayToSQL(this.dataProvider.configuration.get('tableName')?.value!, this.dataProvider.data)
          .map((value: string) => value + '\n'));
        break;
      default:
        throw new Error(`Invalid format ${format}`);
    }
    saveAs(blob, `${(this.dataProvider.configuration.get('tableName')?.value || 'mockez')}_${Date.now()}.${format.toLowerCase()}`);
  }

  public saveThisSchemaOnClick(): void {
    this.modalProvider.showError({
      body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
    });
  }

  public featureNotAvailable(): void {
    this.modalProvider.showError({
      body: 'Sorry, at the moment, this feature is still in development.'
    });
  }
}
