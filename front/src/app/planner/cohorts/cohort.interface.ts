//import {Program} from "../programs/program.interface";
import {MetaObject} from "../../core/meta-object.interface";
export interface Cohort extends MetaObject{
  id: number;
  code: string;
  description: string;
  //program?: Program;
}
