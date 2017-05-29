import {Document} from "../../core/document.interface";
import {Student} from "../../identity/student.interface";
import {AcademicSession} from "../../planner/academic-sessions/academic-session.interface";
export interface GraduationApplication extends Document{
  referenceNo:string;
  sourceNo:string;
  description:string;
  memo:string;
  cgpa:number;
  creditHour:number;
  student:Student;
  academicSession:AcademicSession;
}
