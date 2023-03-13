import { Component, Injector } from '@angular/core';
import { AbstractComponent } from '@core/common/abstract.component';

/**
 * @author Do Quoc Viet
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
