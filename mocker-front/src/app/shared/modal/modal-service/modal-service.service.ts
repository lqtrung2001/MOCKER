import { ApplicationRef, ComponentFactory, ComponentFactoryResolver, Injectable, Type } from '@angular/core';
import {
  ModalContainerComponent
} from '@shared/modal/modal-service/component/modal-container/modal-container.component';
import { Modal } from '@shared/modal/modal-service/model/modal.model';
import { ModalRef } from '@shared/modal/modal-service/model/modal-ref.model';
import { Observable } from 'rxjs';

/**
 * @author Do Quoc Viet
 */

@Injectable({
  providedIn: 'root'
})
export class ModalService {
  private modalContainer!: HTMLElement;
  private modalContainerFactory!: ComponentFactory<ModalContainerComponent>;

  constructor(
    private componentFactoryResolver: ComponentFactoryResolver,
    private applicationRef: ApplicationRef
  ) {
    this.setupModalContainerFactory();
  }

  public open<T extends Modal>(component: Type<T>, inputs?: any): Observable<any> {
    document.body.style.overflow = 'hidden';
    this.setupModalContainerDiv();
    const modalContainerRef = this.applicationRef.bootstrap(this.modalContainerFactory, this.modalContainer);
    const modalComponentRef = modalContainerRef.instance.createModal(component);

    if (inputs) {
      modalComponentRef.instance.onInjectInputs(inputs);
    }

    return new ModalRef(modalContainerRef, modalComponentRef).onResult();
  }

  private setupModalContainerDiv(): void {
    this.modalContainer = document.createElement(`div`);
    document.getElementsByTagName('body')[0].appendChild(this.modalContainer);
  }

  private setupModalContainerFactory(): void {
    this.modalContainerFactory = this.componentFactoryResolver.resolveComponentFactory(ModalContainerComponent);
  }
}
