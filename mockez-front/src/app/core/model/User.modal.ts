import { Group } from './Group.modal';

export interface User {
  id: string,
  email: string,
  password: string,
  name: string,
  phone?: string,
  gender?: boolean,
  address?: string,
  dob?: string,
  group?: Group

}
