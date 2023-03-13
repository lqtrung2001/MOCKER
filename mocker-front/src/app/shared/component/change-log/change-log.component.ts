import { Component, Injector } from '@angular/core';
import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';

@Component({
  selector: 'moc-change-log',
  templateUrl: 'change-log.component.html',
  styleUrls: ['change-log.component.scss']
})
export class ChangeLogComponent extends AbstractSharedComponent {
  changeLogs: {
    time: Date,
    message: string
  }[] = [];

  constructor(
    injector: Injector
  ) {
    super(injector);
    this.changeLogs.push(
      {
        time: new Date('2/3/2023'),
        message: 'Added the ability to generate v5 UUIDs via a new uuid_v5(namespace, name) function in formulas'
      },
      {
        time: new Date('1/22/2023'),
        message: 'Added the ability to force the quote character on custom file formats.'
      },
      {
        time: new Date('1/4/2023'),
        message: 'Added Address Line 2 type.'
      },
      {
        time: new Date('12/22/2022'),
        message: 'Added a ULID data type.'
      },
      {
        time: new Date('11/20/2022'),
        message: 'Added airport data.'
      },
      {
        time: new Date('11/14/2021'),
        message: 'You can now generate datasets using JSON and import them into other schemas using the Dataset Column type.'
      },
      {
        time: new Date('10/14/2021'),
        message: 'Added support for InfluxDB'
      },
      {
        time: new Date('6/19/2021'),
        message: 'Added the ability to import fields from a JSON schema or example JSON object.'
      },
      {
        time: new Date('5/22/2021'),
        message: 'You can now create a dataset directly from a schema. You no longer need to download and reupload generated data to create a datase2!'
      },
      {
        time: new Date('5/19/2021'),
        message: 'You can now stream data to an MQTT endpoint! Click More > Stream to MQTT Endpoint... to get started.'
      },
      {
        time: new Date('5/3/2021'),
        message: 'Added types related to construction work.'
      },
      {
        time: new Date('5/3/2021'),
        message: 'Added Etherium and Tezos types.'
      },
      {
        time: new Date('4/10/2021'),
        message: 'Added a download button to the preview dialog.'
      },
      {
        time: new Date('4/4/2021'),
        message: 'You can now use regular expressions to generate data in formulas. For example /d+/.gen'
      },
      {
        time: new Date('4/2/2021'),
        message: 'Restored the ability to backup your schemas to files.'
      }
    );
  }
}
