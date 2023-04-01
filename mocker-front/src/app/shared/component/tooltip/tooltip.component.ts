import { AbstractSharedComponent } from '@shared/component/common/abstract-shared.component';
import { Component, Injector, Input, OnInit } from '@angular/core';

/**
 * @author Do Quoc Viet
 */

export interface TooltipPosition {
  top?: number;
  right?: number;
  bottom?: number;
  left?: number;
}

@Component({
  selector: 'moc-tooltip',
  templateUrl: 'tooltip.component.html',
  styleUrls: ['tooltip.component.scss']
})
export class TooltipComponent extends AbstractSharedComponent implements OnInit {
  @Input() position: TooltipPosition;
  @Input() dock: HTMLElement;
  isShown: boolean = false;

  constructor(injector: Injector) {
    super(injector);
  }

  ngOnInit(): void {
    if (!this.dock) {
      throw new Error('Cannot find the specified element');
    }
    this.dock.addEventListener('mouseover', (): void => {
      this.isShown = true;
    });
    this.dock.addEventListener('mouseout', (): void => {
      this.isShown = false;
    });
  }

}
