import {Injectable} from '@angular/core';
import {Action} from '@ngrx/store';

@Injectable()
export class EnrollmentApplicationActions {

    static FIND_ASSIGNED_ENROLLMENT_APPLICATION_TASKS = '[EnrollmentApplication] Find Assigned EnrollmentApplication Tasks';

    findAssignedEnrollmentApplicationTasks(): Action {
        return {
            type: EnrollmentApplicationActions.FIND_ASSIGNED_ENROLLMENT_APPLICATION_TASKS
        };
    }

    static FIND_ASSIGNED_ENROLLMENT_APPLICATION_TASKS_SUCCESS = '[EnrollmentApplication] Find Assigned EnrollmentApplication Tasks Success';

    findAssignedEnrollmentApplicationTasksSuccess(tasks): Action {
        console.log("findAssignedEnrollmentApplicationTasksSuccess");
        return {
            type: EnrollmentApplicationActions.FIND_ASSIGNED_ENROLLMENT_APPLICATION_TASKS_SUCCESS,
            payload: tasks
        };
    }

    static FIND_POOLED_ENROLLMENT_APPLICATION_TASKS = '[EnrollmentApplication] Find Pooled EnrollmentApplication Tasks';

    findPooledEnrollmentApplicationTasks(): Action {
        return {
            type: EnrollmentApplicationActions.FIND_POOLED_ENROLLMENT_APPLICATION_TASKS
        };
    }

    static FIND_POOLED_ENROLLMENT_APPLICATION_TASKS_SUCCESS = '[EnrollmentApplication] Find Pooled EnrollmentApplication Tasks Success';

    findPooledEnrollmentApplicationTasksSuccess(tasks): Action {
        console.log("findAssignedEnrollmentApplicationTasksSuccess");
        return {
            type: EnrollmentApplicationActions.FIND_POOLED_ENROLLMENT_APPLICATION_TASKS_SUCCESS,
            payload: tasks
        };
    }

    static FIND_ENROLLMENT_APPLICATION_TASK_BY_TASK_ID = '[EnrollmentApplication] Find EnrollmentApplication Task By Task Id';

    findEnrollmentApplicationTaskByTaskId(taskId): Action {
        console.log("findEnrollmentApplicationTaskByTaskId");
        return {
            type: EnrollmentApplicationActions.FIND_ENROLLMENT_APPLICATION_TASK_BY_TASK_ID,
            payload: taskId
        };
    }

    static FIND_ENROLLMENT_APPLICATION_TASK_BY_TASK_ID_SUCCESS = '[EnrollmentApplication] Find EnrollmentApplication Task By Task Id Success';

    findEnrollmentApplicationTaskByTaskIdSuccess(task): Action {
        console.log("findEnrollmentApplicationTaskByTaskIdSuccess");
        return {
            type: EnrollmentApplicationActions.FIND_ENROLLMENT_APPLICATION_TASK_BY_TASK_ID_SUCCESS,
            payload: task
        };
    }

    static START_ENROLLMENT_APPLICATION_TASK = '[EnrollmentApplication] Start EnrollmentApplication Task';

    startEnrollmentApplicationTask(application): Action {
        return {
            type: EnrollmentApplicationActions.START_ENROLLMENT_APPLICATION_TASK,
            payload: application
        };
    }

    static START_ENROLLMENT_APPLICATION_TASK_SUCCESS = '[EnrollmentApplication] Start EnrollmentApplication Task Success';

    startEnrollmentApplicationTaskSuccess(task): Action {
        return {
            type: EnrollmentApplicationActions.START_ENROLLMENT_APPLICATION_TASK_SUCCESS,
            payload: task
        };
    }

    static COMPLETE_ENROLLMENT_APPLICATION_TASK = '[EnrollmentApplication] Complete EnrollmentApplication Task';

    completeEnrollmentApplicationTask(application): Action {
        return {
            type: EnrollmentApplicationActions.COMPLETE_ENROLLMENT_APPLICATION_TASK,
            payload: application
        };
    }

    static COMPLETE_ENROLLMENT_APPLICATION_TASK_SUCCESS = '[EnrollmentApplication] Complete EnrollmentApplication Task Success';

    completeEnrollmentApplicationTaskSuccess(message): Action {
        return {
            type: EnrollmentApplicationActions.COMPLETE_ENROLLMENT_APPLICATION_TASK_SUCCESS,
            payload: message
        };
    }

    static CLAIM_ENROLLMENT_APPLICATION_TASK = '[EnrollmentApplication] Assign EnrollmentApplication Task';

    claimEnrollmentApplicationTask(application): Action {
        return {
            type: EnrollmentApplicationActions.CLAIM_ENROLLMENT_APPLICATION_TASK,
            payload: application
        };
    }

    static CLAIM_ENROLLMENT_APPLICATION_TASK_SUCCESS = '[EnrollmentApplication] Assign EnrollmentApplication Task Success';

    claimEnrollmentApplicationTaskSuccess(task): Action {
        return {
            type: EnrollmentApplicationActions.CLAIM_ENROLLMENT_APPLICATION_TASK_SUCCESS,
            payload: task
        };
    }

    static RELEASE_ENROLLMENT_APPLICATION_TASK = '[EnrollmentApplication] Release EnrollmentApplication Task';

    releaseEnrollmentApplicationTask(application): Action {
        return {
            type: EnrollmentApplicationActions.RELEASE_ENROLLMENT_APPLICATION_TASK,
            payload: application
        };
    }

    static RELEASE_ENROLLMENT_APPLICATION_TASK_SUCCESS = '[EnrollmentApplication] Release EnrollmentApplication Task Success';

    releaseEnrollmentApplicationTaskSuccess(task): Action {
        return {
            type: EnrollmentApplicationActions.RELEASE_ENROLLMENT_APPLICATION_TASK_SUCCESS,
            payload: task
        };
    }

    static FIND_ENROLLMENT_APPLICATION_BY_ID = '[EnrollmentApplication] Find EnrollmentApplication By Id';

    findEnrollmentApplicationById(id): Action {
        return {
            type: EnrollmentApplicationActions.FIND_ENROLLMENT_APPLICATION_BY_ID,
            payload: id
        };
    }

    static FIND_ENROLLMENT_APPLICATION_BY_ID_SUCCESS = '[EnrollmentApplication] Find EnrollmentApplication By Id Success';

    findEnrollmentApplicationByIdSuccess(application): Action {
        return {
            type: EnrollmentApplicationActions.FIND_ENROLLMENT_APPLICATION_BY_ID_SUCCESS,
            payload: application
        };
    }

    static FIND_ENROLLMENT_APPLICATION_BY_REFERENCE_NO = '[EnrollmentApplication] Find EnrollmentApplication By Reference No';

    findEnrollmentApplicationByReferenceNo(referenceNo): Action {
        return {
            type: EnrollmentApplicationActions.FIND_ENROLLMENT_APPLICATION_BY_REFERENCE_NO,
            payload: referenceNo
        };
    }

    static FIND_ENROLLMENT_APPLICATION_BY_REFERENCE_NO_SUCCESS = '[EnrollmentApplication] Find EnrollmentApplication By Reference No Success';

    findEnrollmentApplicationByReferenceNoSuccess(application): Action {
        return {
            type: EnrollmentApplicationActions.FIND_ENROLLMENT_APPLICATION_BY_REFERENCE_NO_SUCCESS,
            payload: application
        };
    }

    static FIND_ENROLLMENT_APPLICATION_ITEMS = '[EnrollmentApplication] Find EnrollmentApplication Items';

    findEnrollmentApplicationItems(application): Action {
        console.log("findEnrollmentApplicationItems for application: " + application);
        return {
            type: EnrollmentApplicationActions.FIND_ENROLLMENT_APPLICATION_ITEMS,
            payload: application
        };
    }

    static FIND_ENROLLMENT_APPLICATION_ITEMS_SUCCESS = '[EnrollmentApplication] Find EnrollmentApplication Items Success';

    findEnrollmentApplicationItemsSuccess(items): Action {
        console.log("findEnrollmentApplicationItemsSuccess");
        return {
            type: EnrollmentApplicationActions.FIND_ENROLLMENT_APPLICATION_ITEMS_SUCCESS,
            payload: items
        };
    }


    static UPDATE_ENROLLMENT_APPLICATION = '[EnrollmentApplication] Update EnrollmentApplication';

    updateEnrollmentApplication(application): Action {
        return {
            type: EnrollmentApplicationActions.UPDATE_ENROLLMENT_APPLICATION,
            payload: application
        };
    }

    static UPDATE_ENROLLMENT_APPLICATION_SUCCESS = '[EnrollmentApplication] Update EnrollmentApplication Success';

    updateEnrollmentApplicationSuccess(application): Action {
        return {
            type: EnrollmentApplicationActions.UPDATE_ENROLLMENT_APPLICATION_SUCCESS,
            payload: application
        };
    }

    static REMOVE_ENROLLMENT_APPLICATION = '[EnrollmentApplication] Remove EnrollmentApplication';

    removeEnrollmentApplication(application): Action {
        return {
            type: EnrollmentApplicationActions.REMOVE_ENROLLMENT_APPLICATION,
            payload: application
        };
    }

    static REMOVE_ENROLLMENT_APPLICATION_SUCCESS = '[EnrollmentApplication] Remove EnrollmentApplication Success';

    removeEnrollmentApplicationSuccess(application): Action {
        return {
            type: EnrollmentApplicationActions.REMOVE_ENROLLMENT_APPLICATION_SUCCESS,
            payload: application
        };
    }

    static ADD_ENROLLMENT_APPLICATION_ITEM = '[EnrollmentApplication] Add EnrollmentApplication Item';

    addEnrollmentApplicationItem(application, item): Action {
        return {
            type: EnrollmentApplicationActions.ADD_ENROLLMENT_APPLICATION_ITEM,
            payload: { application: application, item: item }
        };
    }

    static ADD_ENROLLMENT_APPLICATION_ITEM_SUCCESS = '[EnrollmentApplication] Add EnrollmentApplication Item Success';

    addEnrollmentApplicationItemSuccess(message): Action {
        return {
            type: EnrollmentApplicationActions.ADD_ENROLLMENT_APPLICATION_ITEM_SUCCESS,
            payload: message
        };
    }

}
