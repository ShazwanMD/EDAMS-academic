import {SetupActions} from './../setup.action';
import {Action} from '@ngrx/store';
import {RaceCode} from "../../common/race-codes/race-code.interface";


export type RaceCodeListState = RaceCode[];

const initialState: RaceCodeListState = <RaceCode[]>[];

export function raceCodeListReducer(state = initialState, action: Action): RaceCodeListState {
  switch (action.type) {
    case SetupActions.FIND_RACE_CODES_SUCCESS: {
      return action.payload;
    }
    default: {
      return state;
    }
  }
}
