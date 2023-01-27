import { Component, Injector } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract.component';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-project',
  templateUrl: 'project.component.html',
  styleUrls: ['project.component.scss']
})
export class ProjectComponent extends AbstractComponent {

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

}
