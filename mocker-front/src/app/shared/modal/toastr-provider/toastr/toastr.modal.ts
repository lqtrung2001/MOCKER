import { AbstractModal } from '@core/class/abstract.modal';
import { AfterViewInit, Component, Injector } from '@angular/core';
import { ToastrProvider } from '@shared/modal/toastr-provider/toastr-provider';

/**
 * @author Do Quoc Viet
 * @date 01/02/2023
 */

export interface ToastrModalOptions {
  title?: string;
  body?: string;
  detail?: string;
  timeout?: number;
  click?: () => void;
}

export enum ToastrType {
  ERROR,
  WARNING,
  INFORMATION,
  SUCCESS
}

export interface ToastrModalCustomOptions extends ToastrModalOptions {
  type: ToastrType;
  id: number;
}

export interface ToastrPosition {
  id: number;
  bottom: number;
  zIndex: number;
}

type Style = {
  icon: string,
  bgColor: string
};

@Component({
  selector: 'moc-toastr-modal',
  templateUrl: 'toastr.modal.html',
  styleUrls: ['toastr.modal.scss']
})
export class ToastrModal extends AbstractModal implements AfterViewInit {
  override options: ToastrModalCustomOptions;
  styles: Map<ToastrType, Style>;
  width: number;
  opacity: number;
  interval: any;

  constructor(
    injector: Injector,
    private toastrProvider: ToastrProvider
  ) {
    super(injector);
    this.styles = new Map();
    this.styles.set(ToastrType.ERROR, {
      icon: 'text-red fa-solid fa-circle-xmark',
      bgColor: 'bg-red'
    });
    this.styles.set(ToastrType.WARNING, {
      icon: 'text-yellow fa-solid fa-triangle-exclamation',
      bgColor: 'bg-yellow'
    });
    this.styles.set(ToastrType.INFORMATION, {
      icon: 'text-blue fa-solid fa-circle-info',
      bgColor: 'bg-blue'
    });
    this.styles.set(ToastrType.SUCCESS, {
      icon: 'text-green fa-sharp fa-solid fa-circle-check',
      bgColor: 'bg-green'
    });
    this.width = 100;
    this.opacity = 100;
  }

  ngAfterViewInit(): void {
    let timeout: number = this.options.timeout || 3000;
    let counter: number = 0;
    this.interval = setInterval(() => {
      counter += 20;
      const percent: number = 100 - (counter / timeout) * 100;
      this.width = percent;
      this.opacity = percent / 100 + 0.7;
    }, 20);
    setTimeout(this.toastrClose.bind(this), timeout);
  }

  click(): void {
    if (this.options?.click) {
      this.options.click();
    }
  }

  toastrClose(): void {
    const toastrPositions: ToastrPosition[] = this.toastrProvider.toastrPositions;
    const index = toastrPositions.indexOf(toastrPositions.find((t: ToastrPosition) => t.id === this.options?.id)!);
    this.toastrProvider.toastrPositions = toastrPositions.filter((t: ToastrPosition) => t.id !== this.options?.id);
    this.toastrProvider.toastrPositions.forEach((toastrPosition: ToastrPosition, i: number) => {
      if (index > 0 && i >= index) {
        toastrPosition.bottom -= 170;
        toastrPosition.zIndex++;
      }
    });
    clearInterval(this.interval);
    this.close();
  }

  get style(): Style {
    return this.styles.get(this.options.type)!;
  }

  get bottom(): number {
    const id: number = this.options?.id;
    return this.toastrProvider.toastrPositions
      .find((toastrPosition: ToastrPosition) => toastrPosition.id === id)?.bottom || 0;
  }

  get zIndex(): number {
    const id: number = this.options?.id;
    return this.toastrProvider.toastrPositions
      .find((toastrPosition: ToastrPosition) => toastrPosition.id === id)?.zIndex || 0;
  }

  get visible(): string {
    const toastrPositions: ToastrPosition[] = this.toastrProvider.toastrPositions;
    const index = toastrPositions.indexOf(toastrPositions.find((t: ToastrPosition) => t.id === this.options?.id)!);
    return index >= 5 ? 'none' : 'block';
  }

}
