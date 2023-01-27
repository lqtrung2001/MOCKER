import { AbstractComponent } from '@core/class/abstract.component';
import { Component, Injector } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-projects',
  templateUrl: 'projects.component.html',
  styleUrls: ['projects.component.scss']
})
export class ProjectsComponent extends AbstractComponent {

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

}
