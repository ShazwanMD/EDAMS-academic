import {Action} from '@ngrx/store';
import {ProgramActions} from "./program.action";
import {Program} from "./program.interface";

export type ProgramState = Program;

const initialState: ProgramState = {
  id: 0,
  code: '',
  title:'',
  titleMs:'',
  titleEn:''
};

export function programReducer(state = initialState, action: Action): ProgramState {
  console.log("action: " + action.type);
  switch (action.type) {
    case ProgramActions.RESET_PROGRAM: {
      return initialState;
    }
    case ProgramActions.FIND_PROGRAM_SUCCESS: {
      return action.payload;
    }
    default: {
      return state;
    }
  }
}