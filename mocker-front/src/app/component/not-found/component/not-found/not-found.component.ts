import { Component, Injector } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract.component';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-not-found',
  templateUrl: 'not-found.component.html',
  styleUrls: ['not-found.component.scss']
})
export class NotFoundComponent extends AbstractComponent {

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  goToHomepage(): void {
    this.router.navigate(['/']).then();
  }

}
