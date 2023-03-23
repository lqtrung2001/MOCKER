import { AfterViewInit, Component, ElementRef, Injector, Input, TemplateRef, ViewChild } from '@angular/core';
import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';

/**
 * @author Do Quoc Viet
 */

export interface Option {
  id: string;
  icon?: string;
  label: string;
  click: () => void;
}

@Component({
  selector: 'moc-dropdown',
  templateUrl: 'dropdown.component.html',
  styleUrls: ['dropdown.component.scss']
})
export class DropdownComponent extends AbstractSharedComponent implements AfterViewInit {
  @Input() header: TemplateRef<any>;
  @Input() footer: TemplateRef<any>;
  @Input() behavior: 'click' | 'hover' = 'click';
  @Input() options: Option[] = [];
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

  override ngAfterViewInit(): void {
    super.ngAfterViewInit();
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

  optionClick(option: Option): void {
    this.isShown = false;
    // callback
    option.click();
  }

}
