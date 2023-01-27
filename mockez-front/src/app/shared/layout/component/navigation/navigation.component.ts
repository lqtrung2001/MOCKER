import { Component, Injector } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract.component';

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

  constructor(
    injector: Injector
  ) {
    super(injector);
    this.navigations = [{
      routerLink: '/general',
      title: 'General',
      icon: 'fa-light fa-window-restore'
    }, {
      routerLink: '/workspace',
      title: 'Workspace',
      icon: 'fa-regular fa-display-code'
    }, {
      routerLink: '/group',
      title: 'Group',
      icon: 'fa-regular fa-buildings'
    }, {
      routerLink: '/people',
      title: 'People',
      icon: 'fa-regular fa-user'
    }, {
      routerLink: '/setting',
      title: 'Setting',
      icon: 'fa-regular fa-gear'
    }];
  }
}
