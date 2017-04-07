import {Action} from '@ngrx/store';
import {CohortActions} from "./cohort.action";
import {Cohort} from "./cohort.interface";

export type CohortState = Cohort;

const initialState: CohortState = {
  id: 0,
  code: '',
  description: '',
  program:null,
};

export function cohortReducer(state = initialState, action: Action): CohortState {
  console.log("action: " + action);
  switch (action.type) {
    case CohortActions.RESET_COHORT: {
      return initialState;
    }
    case CohortActions.FIND_COHORT_SUCCESS: {
      return action.payload;
    }
    default: {
      return state;
    }
  }
}