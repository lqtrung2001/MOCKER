/**
 * @author Do Quoc Viet
 */
import { StringUtil } from '@core/util/string.util';

type ImageColor = {
  backgroundColor: string;
  textColor: string;
}

export class ImageProcessorUtil {
  private static imageColors: ImageColor[] = [{
    backgroundColor: 'tw-bg-red-light',
    textColor: 'tw-text-red'
  }, {
    backgroundColor: 'tw-bg-green-light',
    textColor: 'tw-text-green'
  }, {
    backgroundColor: 'tw-bg-blue-light',
    textColor: 'tw-text-blue'
  }, {
    backgroundColor: 'tw-bg-yellow-light',
    textColor: 'tw-text-yellow'
  }];

  static getImageColor(id: string): string {
    // @ts-ignore
    const number: number = id.match(/[0-9]+/)[0][0];
    const result: ImageColor = this.imageColors[Math.round(number / 4)];
    return result.backgroundColor + StringUtil.SPACE + result.textColor;
  }

}
