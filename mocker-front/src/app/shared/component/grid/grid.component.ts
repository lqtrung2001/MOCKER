import { SharedComponent } from '@shared/component/common/shared.component';
import { Component, Injector, Input, OnChanges, SimpleChanges } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';
import { StringUtil } from '@core/util/string.util';

/**
 * @author Do Quoc Viet
 */

export type GridColumn = {
  label: string,
  colSpan?: number,
  key: string,
  isSearched?: boolean
};

export type GridValue = {
  [key: string]: {
    value: string,
    click?: (arg?: any) => void,
    html?: string
  } | string
};

export interface Grid {
  columns?: GridColumn[];
  values: GridValue[];
}

export type CreateAction = {
  click: () => void;
  content: string;
}

type Controls = {
  search: FormControl
}

@Component({
  selector: 'moc-grid',
  templateUrl: 'grid.component.html',
  styleUrls: ['grid.component.scss']
})
export class GridComponent extends SharedComponent implements OnChanges {
  @Input() mocGrid: Grid;
  @Input() createAction: CreateAction;
  formGroup: FormGroup<Controls>;
  columnActive: string;
  pageValues: GridValue[];
  currentPageNumber: number;

  constructor(
    injector: Injector
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      search: this.formBuilder.control(undefined, [])
    });
    this.formGroup.controls.search.valueChanges.subscribe((value: string): void => {
      this.pageValues = this.mocGrid.values.filter((gridValue: GridValue): boolean => {
        let match: boolean = false;
        this.mocGrid.columns
          ?.filter((gridColumn: GridColumn): boolean => !!gridColumn.isSearched)
          .map((gridColumn: GridColumn): string => gridColumn.key)
          .forEach((key: string): void => {
            // @ts-ignore
            const valueForCheck: string = gridValue[key] instanceof Object ? gridValue[key].value : gridValue[key];
            if (valueForCheck.toLowerCase().includes(value.toLowerCase())) {
              match = true;
              return;
            }
          });
        return match;
      });
    });
  }

  ngOnChanges(changes: SimpleChanges): void {
    if (changes['mocGrid']) {
      this.pageNumberChange(1);
    }
  }

  getInnerHTML(row: any): string {
    if (row instanceof Object) {
      return row.html ? row.html.replace('><', `>${row.value}<`) : row.value;
    }
    return row;
  }

  getAction(value: any): () => void {
    if (value instanceof Object) {
      return value.click;
    }
    // @formatter:off
    return (): void => {};
    // @formatter:on
  }

  get colSpan(): number {
    if (this.mocGrid) {
      return this.mocGrid.columns!
        .map((gridColumn: GridColumn): number => gridColumn.colSpan || 1)
        .reduce((previous: number, current: number): number => previous + current, 1);
    }
    return 0;
  }

  get searchPlaceholder(): string {
    if (!this.mocGrid) {
      return StringUtil.EMPTY;
    }
    const searches: string | undefined = this.mocGrid.columns
      ?.filter((gridColumn: GridColumn): boolean => !!gridColumn.isSearched)
      .map((gridColumn: GridColumn) => gridColumn.label)
      .join(', ');
    return this.truncatePipe.transform(this.translateService.instant('component.grid.search', { searches }), 50);
  }

  get totalPageNumber(): Array<number> {
    if (!this.mocGrid?.values?.length) {
      return [1];
    }
    return Array(Math.ceil(this.mocGrid.values.length / this.applicationConfig.numberItemsOfPage))
      .fill(0)
      .map((value: any, index: number): number => index + 1);
  }

  pageNumberChange(pageNumber?: number | 'previous' | 'next'): void {
    if (!this.mocGrid?.values?.length) {
      this.currentPageNumber = 1;
      return;
    }
    if (pageNumber === 'previous') {
      if (this.currentPageNumber === 1) {
        return;
      }
      this.currentPageNumber--;
    }
    if (pageNumber === 'next') {
      if (this.currentPageNumber === this.totalPageNumber.length) {
        return;
      }
      this.currentPageNumber++;
    }
    if (Number.isInteger(pageNumber)) {
      // @ts-ignore
      this.currentPageNumber = pageNumber;
    }
    const start: number = (this.currentPageNumber - 1) * this.applicationConfig.numberItemsOfPage;
    this.pageValues = this.mocGrid.values.slice(start, start + this.applicationConfig.numberItemsOfPage);
  }

}
