import { GenerateType } from './GenerateType.modal';

export interface Category {

  /**
   * Category id
   * */
  id: string;

  /**
   * Category name
   * */
  name?: string;

  /**
   * Category description
   * */
  description?: string;

  /**
   * Generate types
   * */
  generateTypes?: GenerateType[];

  /**
   * Category version
   * */
  version?: number;

  /** Customize properties in blow lines */
  generateTypeCount: number;
}
