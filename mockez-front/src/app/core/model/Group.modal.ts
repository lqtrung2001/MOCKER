import { User } from '@core/model/User.modal';

export interface Group {
  id: string,
  name: string,
  description?: string,
  users: User[]
}
