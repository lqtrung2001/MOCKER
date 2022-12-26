import { Pipe, PipeTransform } from '@angular/core';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

@Pipe({
  name: 'dateDurationPipe'
})
export class DateDurationPipe implements PipeTransform {

  transform(date: Date): string {
    const second: number = 1000;
    const minute: number = second * 60;
    const hour: number = minute * 60;
    const day: number = hour * 24;
    const week: number = day * 7;
    const today: Date = new Date();
    date = new Date(date);
    const diff: number = today.getTime() - date.getTime();
    if (isNaN(diff)) return '';
    const info = {
      second: Math.floor(diff / second),
      minute: Math.floor(diff / minute),
      hour: Math.floor(diff / hour),
      day: Math.floor(diff / day),
      week: Math.floor(diff / week),
      month: (today.getFullYear() * 12 + today.getMonth()) - (date.getFullYear() * 12 + date.getMonth()),
      year: today.getFullYear() - date.getFullYear()
    };
    for (const [key, value] of Object.entries(info).reverse()) {
      if (value) {
        return value + ' ' + key + (value > 1 ? 's' : '') + ' ago';
      }
    }
    return '';
  }

}
