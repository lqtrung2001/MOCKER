export class GroupAccessPK {

  private _groupId: string;
  private _userId: string;

  constructor(groupId: string, userId: string) {
    this._groupId = groupId;
    this._userId = userId;
  }

  get groupId(): string {
    return this._groupId;
  }

  set groupId(value: string) {
    this._groupId = value;
  }

  get userId(): string {
    return this._userId;
  }

  set userId(value: string) {
    this._userId = value;
  }
}
