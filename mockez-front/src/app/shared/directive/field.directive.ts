import { Directive, Input } from '@angular/core';

@Directive({
  selector: '[field]'
})
export class FieldDirective {
  @Input() type: string;

}
