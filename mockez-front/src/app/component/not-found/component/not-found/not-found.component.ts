import { Component } from '@angular/core';
import { Router } from '@angular/router';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-not-found',
  templateUrl: 'not-found.component.html',
  styleUrls: ['not-found.component.scss']
})
export class NotFoundComponent {

  constructor(
    private router: Router
  ) {
  }

  goToHomepage(): void {
    this.router.navigate(['/']).then();
  }

}
