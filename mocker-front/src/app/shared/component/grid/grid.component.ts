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

type PageValue = {
  gridValue: GridValue;
  position: number;
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
  pageValues: PageValue[];
  currentPageNumber: number;

  constructor(
    injector: Injector
  ) {
    super(injector);
    this.formGroup = this.formBuilder.group({
      search: this.formBuilder.control(undefined, [])
    });
    this.formGroup.controls.search.valueChanges
      .subscribe((): void => {
        this.selectPage(1);
      });
  }

  ngOnChanges(changes: SimpleChanges): void {
    if (changes['mocGrid']) {
      this.selectPage(1);
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
    if (!this.pages.length) {
      return [1];
    }
    return Array(Math.ceil(this.pages.length / this.applicationConfig.numberItemsOfPage))
      .fill(0)
      .map((value: any, index: number): number => index + 1);
  }

  selectPage(pageNumber?: number | 'previous' | 'next'): void {
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
    this.pageValues = this.pages.slice(start, start + this.applicationConfig.numberItemsOfPage);
  }

  get pages(): PageValue[] {
    return this.mocGrid.values
      .map((gridValue: GridValue, index: number): PageValue => ({
        gridValue: gridValue,
        position: index
      }))
      .filter((pageValue: PageValue): boolean => {
        const searchValue: string = this.formGroup.controls.search.value;
        if (!searchValue) {
          return true;
        }
        let match: boolean = false;
        this.mocGrid.columns
          ?.filter((gridColumn: GridColumn): boolean => !!gridColumn.isSearched)
          .map((gridColumn: GridColumn): string => gridColumn.key)
          .forEach((key: string): void => {
            // @ts-ignore
            const valueForCheck: string = pageValue.gridValue[key] instanceof Object ? pageValue.gridValue[key].value : pageValue.gridValue[key];
            if (valueForCheck.toLowerCase().includes(searchValue.toLowerCase())) {
              match = true;
              return;
            }
          });
        return match;
      });
  }

}
