import { Component, Injector } from '@angular/core';
import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';

@Component({
  selector: 'moc-change-log',
  templateUrl: 'change-log.component.html',
  styleUrls: ['change-log.component.scss']
})
export class ChangeLogComponent extends AbstractSharedComponent {
  changeLogs: {
    title: string,
    message: string
  }[] = [];

  constructor(
    injector: Injector
  ) {
    super(injector);
    this.changeLogs.push(
      {
        title: 'Step 1: ',
        message: 'Access to a Group, this will be where you and your friends jointly manage, create Projects and share data with each other.'
      },
      {
        title: 'Step 2: ',
        message: 'Access to a Project, each Project corresponds to each project that your group works together.'
      },
      {
        title: 'Step 3: ',
        message: 'We continue to access the Schema where the Project\'s tables are stored.'
      },
      {
        title: 'Step 4: ',
        message: 'Then create the tables you want as instructed above.'
      },
      {
        title: 'Step 5: ',
        message: 'Once there are tables, we will create a relationship between the tables by clicking on 2 fields of 2 different tables. Note that fields must use data types to be linked.'
      },
      {
        title: 'Step 6: ',
        message: 'After the above steps you have the complete data, you can press the Preview button and then click the eye icon to open each panel to preview the data or press the Download button to download the data.'
      },
    );
  }
}
