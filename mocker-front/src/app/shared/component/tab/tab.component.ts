import { Component, Injector, Input, TemplateRef } from '@angular/core';
import { AbstractComponent } from '@core/class/abstract.component';
import { AbstractSharedComponent } from '@shared/component/abstract-shared/abstract-shared.component';

/**
 * @author Do Quoc Viet
 * @date 05/02/2023
 */

export interface Tab {
  icon?: string;
  title: string,
  content: TemplateRef<any>
}

@Component({
  selector: 'moc-tab',
  templateUrl: 'tab.component.html',
  styleUrls: ['tab.component.scss']
})
export class TabComponent extends AbstractSharedComponent {
  @Input() tabs: Tab[] = [];
  current: number;

  constructor(
    injector: Injector
  ) {
    super(injector);
    this.current = 0;
  }

  change(index: number): void {
    this.current = index;
  }

}
