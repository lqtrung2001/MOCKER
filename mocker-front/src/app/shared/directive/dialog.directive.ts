import { AfterContentInit, Directive, ElementRef, Input, Renderer2 } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';

/**
 * @author Do Quoc Viet
 */

@Directive({
  selector: '[dialog]'
})
export class DialogDirective implements AfterContentInit {
  @Input() modal: Modal;
  content: HTMLDivElement;

  constructor(private elementRef: ElementRef, private renderer: Renderer2) {
    this.addClasses('fixed top-0 left-0 w-full h-full z-10', elementRef.nativeElement);
    this.renderer.setStyle(elementRef.nativeElement, 'background-color', 'rgba(0, 0, 0, 0.6)');
  }

  ngAfterContentInit(): void {
    this.content = this.elementRef.nativeElement.children[0];
    this.addClasses('rounded absolute bg-white top-1/2 left-1/2', this.content);
    this.renderer.setStyle(this.content, 'content', '');
    this.renderer.setStyle(this.content, 'transform', 'translate(-50%, -50%)');
    this.closeListenerProcessor();
  }

  addClasses(classes: string, element: Element): void {
    classes.split(' ').forEach((clazz: string) => {
      this.renderer.addClass(element, clazz);
    });
  }

  closeListenerProcessor(): void {
    this.renderer.listen(this.elementRef.nativeElement, 'click', (event: Event): void => {
      if (!this.isDescendant(this.content, event.target as HTMLElement)) {
        this.modal.close();
      }
    });
  }

  isDescendant(parent: HTMLElement, child: HTMLElement): boolean {
    while (child !== null) {
      if (child === parent) {
        return true;
      }
      child = (child.parentNode) as HTMLElement;
    }
    return false;
  }

}
