/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class GroupMemberPk {

  private _groupId: string | undefined = undefined;
  private _userId: string | undefined = undefined;

  get groupId(): string | undefined {
    return this._groupId;
  }

  set groupId(value: string | undefined) {
    this._groupId = value;
  }

  get userId(): string | undefined {
    return this._userId;
  }

  set userId(value: string | undefined) {
    this._userId = value;
  }
}
