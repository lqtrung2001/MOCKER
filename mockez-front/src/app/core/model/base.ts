/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class Base {

  private _createdDate: Date | undefined = undefined;
  private _createdBy: string | undefined = undefined;
  private _createdByGroup: string | undefined = undefined;
  private _modifiedDate: Date | undefined = undefined;
  private _modifiedBy: string | undefined = undefined;
  private _modifiedByGroup: string | undefined = undefined;
  private _version: number | undefined = undefined;

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

  get createdByGroup(): string | undefined {
    return this._createdByGroup;
  }

  set createdByGroup(value: string | undefined) {
    this._createdByGroup = value;
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

  get modifiedByGroup(): string | undefined {
    return this._modifiedByGroup;
  }

  set modifiedByGroup(value: string | undefined) {
    this._modifiedByGroup = value;
  }

  get version(): number | undefined {
    return this._version;
  }

  set version(value: number | undefined) {
    this._version = value;
  }
}
