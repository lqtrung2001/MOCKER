import { Component, Injector } from '@angular/core';
import { AbstractComponent } from '@core/common/abstract.component';
import { Option } from '@shared/component/dropdown/dropdown.component';

/**
 * @author Do Quoc Viet
 */

export interface Navigation {
  routerLink: string;
  title: string;
  icon: string;
}

@Component({
  selector: 'moc-navigation',
  templateUrl: 'navigation.component.html',
  styleUrls: ['navigation.component.scss']
})
export class NavigationComponent extends AbstractComponent {
  navigations: Navigation[] = [];
  options: Option[] = [];

  constructor(
    injector: Injector
  ) {
    super(injector);
    this.navigations = [{
      routerLink: '/schema',
      title: 'schema',
      icon: 'fa-solid fa-diagram-project'
    }, {
      routerLink: '/project',
      title: 'project',
      icon: 'fa-solid fa-list'
    }, {
      routerLink: '/group',
      title: 'group',
      icon: 'fa-solid fa-sitemap'
    }
    // , {
    //   routerLink: '/people',
    //   title: 'people',
    //   icon: 'fa-regular fa-user'
    // }
    ];
    this.options = [{
      id: '1',
      icon: 'fa-solid fa-id-card',
      label: 'Profile',
      click: (): void => {
        this.router.navigate([`people/${this.applicationConfig.user?.id}`]).then();
      }
    }, {
      id: '1',
      icon: 'fa-solid fa-right-from-bracket',
      label: 'Sign out',
      click: (): void => {
        this.router.navigate([`auth/sign-in`]).then();
      }
    }];
  }
}
