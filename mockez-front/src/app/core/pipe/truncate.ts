import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'truncate'
})
export class TruncatePipe implements PipeTransform {

  transform(value: string | undefined, limit: number): string {
    if (value === undefined) {
      return '';
    }
    return value.length > limit ? value.substring(0, limit) + '...' : value;
  }
}
