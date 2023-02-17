import { Component, Injector } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract.component';
import { Action } from '@shared/component/action/action.component';

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

  avatarUrl: string = 'https://yt3.ggpht.com/Cji7zw_9NO5VpKrfN3oP90Wiby3UhNG2t4q8j3wJiAMFSQicFKu-jXJ13H_mJfBKPD1lzaGGXZA=s88-c-k-c0x00ffffff-no-rj-mo';
  navigations: Navigation[] = [];
  actions: Action[] = [];

  constructor(
    injector: Injector
  ) {
    super(injector);
    this.navigations = [{
      routerLink: '/schema',
      title: 'schema',
      icon: 'fa-regular fa-diagram-project'
    }, {
      routerLink: '/dataset',
      title: 'dataset',
      icon: 'fa-regular fa-database'
    }, {
      routerLink: '/mock-api',
      title: 'mock api',
      icon: 'fa-regular fa-server'
    }, {
      routerLink: '/scenario',
      title: 'scenario',
      icon: 'fa-regular fa-scroll'
    }, {
      routerLink: '/project',
      title: 'project',
      icon: 'fa-regular fa-list'
    }, {
      routerLink: '/people',
      title: 'people',
      icon: 'fa-regular fa-user'
    }];
    this.actions = [{
      id: '1',
      // icon: 'fa-regular fa-phone',
      label: 'Switch Account',
      click: () => {
        console.log('Switch Account');
      }
    }, {
      id: '2',
      icon: 'fa-regular fa-id-card',
      label: 'Profile',
      click: () => {
        this.router.navigate([`people/${this.appConfigService.user?.id}`]).then();
      }
    }, {
      id: '3',
      // icon: 'fa-regular fa-phone',
      label: 'Sign out',
      click: () => {
        this.router.navigate([`auth/sign-in`]).then();
      }
    }];
  }
}