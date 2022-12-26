import { OverlayRef } from '@angular/cdk/overlay';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class ToastRef {
  constructor(private readonly overlay: OverlayRef) {
  }

  close() {
    this.overlay.dispose();
  }

  isVisible() {
    return this.overlay && this.overlay.overlayElement;
  }

  getPosition() {
    return this.overlay.overlayElement.getBoundingClientRect();
  }
}
