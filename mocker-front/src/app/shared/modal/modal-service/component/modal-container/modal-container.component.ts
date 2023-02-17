import {
  Component,
  ComponentFactory,
  ComponentFactoryResolver,
  ComponentRef,
  Type,
  ViewChild,
  ViewContainerRef
} from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Component({
  template: `
    <div class='modal-backdrop fade in'></div>
    <ng-template #modalContainer></ng-template>
  `
})
export class ModalContainerComponent {

  @ViewChild('modalContainer', { read: ViewContainerRef })
  private modalContainer!: ViewContainerRef;

  constructor(
    private componentFactoryResolver: ComponentFactoryResolver
  ) {
  }

  public createModal<T extends Modal>(component: Type<T>): ComponentRef<T> {
    this.modalContainer.clear();
    const factory: ComponentFactory<T> = this.componentFactoryResolver.resolveComponentFactory(component);
    return this.modalContainer.createComponent(factory, 0);
  }
}
