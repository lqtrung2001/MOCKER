import { SharedComponent } from '@shared/component/common/shared.component';
import { AfterContentInit, Component, ContentChildren, Injector, QueryList } from '@angular/core';
import { TabComponent } from '@shared/component/tab/tab.component';

/**
 * @author Do Quoc Viet
 */

@Component({
  selector: 'moc-tabs',
  templateUrl: 'tabs.component.html',
  styleUrls: ['tabs.component.scss']
})
export class TabsComponent extends SharedComponent implements AfterContentInit {
  @ContentChildren(TabComponent) tabComponents: QueryList<TabComponent>;

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  ngAfterContentInit(): void {
    const activeTabComponents: TabComponent[] = this.tabComponents
      .filter((tabComponent: TabComponent): boolean => tabComponent.mocActive);
    if (activeTabComponents.length === 0) {
      this.selectTab(this.tabComponents.first);
    }
  }

  selectTab(tabComponent: TabComponent): void {
    this.tabComponents.toArray()
      .forEach((tabComponent: TabComponent): void => {
        tabComponent.mocActive = false;
      });
    tabComponent.mocActive = true;
  }
}
