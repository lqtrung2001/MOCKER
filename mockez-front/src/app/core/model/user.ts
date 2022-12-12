import { Base } from '@core/model/base';
import { Gender } from '@core/model/enumeration/gender';
import { GroupMember } from '@core/model/group-member';

/**
 * @author Luong Quoc Trung, Do Quoc Viet
 */

export class User extends Base {

  private _id: string | undefined = undefined;
  private _username: string | undefined = undefined;
  private _password: string | undefined = undefined;
  private _name: string | undefined = undefined;
  private _phone: string | undefined = undefined;
  private _gender: Gender | undefined = undefined;
  private _address: string | undefined = undefined;
  private _dob: Date | undefined = undefined;
  private _isAccountNonExpired: boolean | undefined = undefined;
  private _isAccountNonLocked: boolean | undefined = undefined;
  private _isCredentialsNonExpired: boolean | undefined = undefined;
  private _isEnabled: boolean | undefined = undefined;
  private _grantedAuthorities: string | undefined = undefined;
  private _groupMembers: GroupMember[] = [];

  get id(): string | undefined {
    return this._id;
  }

  set id(value: string | undefined) {
    this._id = value;
  }

  get username(): string | undefined {
    return this._username;
  }

  set username(value: string | undefined) {
    this._username = value;
  }

  get password(): string | undefined {
    return this._password;
  }

  set password(value: string | undefined) {
    this._password = value;
  }

  get name(): string | undefined {
    return this._name;
  }

  set name(value: string | undefined) {
    this._name = value;
  }

  get phone(): string | undefined {
    return this._phone;
  }

  set phone(value: string | undefined) {
    this._phone = value;
  }

  get gender(): Gender | undefined {
    return this._gender;
  }

  set gender(value: Gender | undefined) {
    this._gender = value;
  }

  get address(): string | undefined {
    return this._address;
  }

  set address(value: string | undefined) {
    this._address = value;
  }

  get dob(): Date | undefined {
    return this._dob;
  }

  set dob(value: Date | undefined) {
    this._dob = value;
  }

  get isAccountNonExpired(): boolean | undefined {
    return this._isAccountNonExpired;
  }

  set isAccountNonExpired(value: boolean | undefined) {
    this._isAccountNonExpired = value;
  }

  get isAccountNonLocked(): boolean | undefined {
    return this._isAccountNonLocked;
  }

  set isAccountNonLocked(value: boolean | undefined) {
    this._isAccountNonLocked = value;
  }

  get isCredentialsNonExpired(): boolean | undefined {
    return this._isCredentialsNonExpired;
  }

  set isCredentialsNonExpired(value: boolean | undefined) {
    this._isCredentialsNonExpired = value;
  }

  get isEnabled(): boolean | undefined {
    return this._isEnabled;
  }

  set isEnabled(value: boolean | undefined) {
    this._isEnabled = value;
  }

  get grantedAuthorities(): string | undefined {
    return this._grantedAuthorities;
  }

  set grantedAuthorities(value: string | undefined) {
    this._grantedAuthorities = value;
  }

  get groupMembers(): GroupMember[] {
    return this._groupMembers;
  }

  set groupMembers(value: GroupMember[]) {
    this._groupMembers = value;
  }
}
