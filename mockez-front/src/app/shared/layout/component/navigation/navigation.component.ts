import { Component } from '@angular/core';
import { DATA_SET, MOCK_API, NOTIFICATION, SETTING } from '@app/app.constant';
import { Router } from '@angular/router';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 * */

@Component({
  selector: 'app-navigation',
  templateUrl: './navigation.component.html',
  styleUrls: ['./navigation.component.scss']
})
export class NavigationComponent {

  featureDisabled: string[] = [];

  constructor(
    private router: Router
  ) {
    // Features will be disabled until next release (March 2023)
    this.featureDisabled = [
      NOTIFICATION,
      DATA_SET,
      MOCK_API,
      SETTING
    ];
  }

  isEnabled(feature: string): boolean {
    return !this.featureDisabled.includes(feature);
  }

  logout(): void {
    localStorage.clear();
    this.router.navigate(['auth/login']).then();
  }
}
