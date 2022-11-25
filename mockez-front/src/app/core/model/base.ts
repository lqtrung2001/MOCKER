export class Base {

  private _createdDate: Date | undefined = undefined;
  private _createdBy: string | undefined = undefined;
  private _modifiedDate: Date | undefined = undefined;
  private _modifiedBy: string | undefined = undefined;

  get createdDate(): Date | undefined {
    return this._createdDate;
  }

  set createdDate(value: Date | undefined) {
    this._createdDate = value;
  }

  get createdBy(): string | undefined {
    return this._createdBy;
  }

  set createdBy(value: string | undefined) {
    this._createdBy = value;
  }

  get modifiedDate(): Date | undefined {
    return this._modifiedDate;
  }

  set modifiedDate(value: Date | undefined) {
    this._modifiedDate = value;
  }

  get modifiedBy(): string | undefined {
    return this._modifiedBy;
  }

  set modifiedBy(value: string | undefined) {
    this._modifiedBy = value;
  }
}
