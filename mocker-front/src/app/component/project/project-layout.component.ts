import { Component, Injector } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract.component';

/**
 * @author Do Quoc Viet
 * @date 04/03/2023
 */

@Component({
  selector: 'moc-project-layout',
  templateUrl: 'project-layout.component.html',
  styleUrls: ['project-layout.component.scss']
})
export class ProjectLayoutComponent extends AbstractComponent {
  constructor(
    injector: Injector
  ) {
    super(injector);
  }
}
