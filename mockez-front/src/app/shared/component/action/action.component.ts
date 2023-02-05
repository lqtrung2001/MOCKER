import { AbstractComponent } from '@core/class/abstract.component';
import { AfterViewInit, Component, ElementRef, Injector, Input, TemplateRef, ViewChild } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

export interface Action {
  id: string;
  icon?: string;
  label: string;
  click: () => void;
}

@Component({
  selector: 'moc-action',
  templateUrl: 'action.component.html',
  styleUrls: ['action.component.scss']
})
export class ActionComponent extends AbstractComponent implements AfterViewInit {
  @Input() self!: TemplateRef<any>;
  @Input() header: TemplateRef<any>;
  @Input() footer: TemplateRef<any>;
  @Input() behavior: 'click' | 'hover' = 'click';
  @Input() actions: Action[] = [];
  @ViewChild('popup') popup: ElementRef;
  @ViewChild('dock') dock: ElementRef;
  isShown: boolean = false;

  constructor(
    injector: Injector
  ) {
    super(injector);
  }

  selfTrigger(behavior: 'click' | 'hover' = 'click'): void {
    this.isShown = this.behavior === behavior;
  }

  ngAfterViewInit(): void {
    // Setting position for actions
    const windowWidth: number = window.innerWidth;
    const dockLeft: number = this.dock.nativeElement.getBoundingClientRect().left;
    if (windowWidth - dockLeft < 72 * 4) {
      this.popup.nativeElement.classList.add('right-0');
    }
    const windowHeight: number = window.innerHeight;
    const dockBottom: number = this.dock.nativeElement.getBoundingClientRect().bottom;
    if (windowHeight - dockBottom < 72 * 4) {
      const dockHeight: number = this.dock.nativeElement.getBoundingClientRect().height;
      this.popup.nativeElement.setAttribute('style', `bottom: ${dockHeight}px`);
    }
  }

  actionClick(action: Action): void {
    this.isShown = false;
    // callback
    action.click();
  }

}