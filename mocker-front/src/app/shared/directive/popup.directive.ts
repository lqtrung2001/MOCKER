import { AfterContentInit, Directive, ElementRef, Input, OnInit, Renderer2 } from '@angular/core';
import { Modal } from '@shared/modal/modal-service/model/modal.model';

/**
 * @author Do Quoc Viet
 */

@Directive({
  selector: '[popup]'
})
export class PopupDirective implements OnInit, AfterContentInit {
  @Input() modal: Modal;
  @Input() dialog: boolean;
  @Input() opacity: number;
  content: HTMLDivElement;

  constructor(private elementRef: ElementRef, private renderer: Renderer2) {
    this.addClasses('tw-fixed tw-top-0 tw-left-0 tw-w-full tw-h-full tw-z-40', elementRef.nativeElement);
  }

  ngOnInit(): void {
    this.renderer.setStyle(this.elementRef.nativeElement, 'background-color', 'rgba(9, 30, 66, 0.54)');
  }

  ngAfterContentInit(): void {
    this.content = this.elementRef.nativeElement.children[0];
    this.addClasses('tw-rounded tw-absolute tw-bg-white tw-top-1/2 tw-left-1/2', this.content);
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
      if (!this.isDescendant(this.content, event.target as HTMLElement) && !this.dialog) {
        this.modal.close();
      }
    });
  }

  isDescendant(parent: HTMLElement, child: HTMLElement): boolean {
    const { x, y, width, height } = child.getBoundingClientRect();
    return !!x && !!y && !!width && !!height || !x && !y && !width && !height;
  }

}
