package my.edu.umk.pams.academic.studyplan.stage;

import com.tngtech.jgiven.Stage;
import com.tngtech.jgiven.annotation.ExpectedScenarioState;
import com.tngtech.jgiven.annotation.Pending;
import com.tngtech.jgiven.integration.spring.JGivenStage;
import my.edu.umk.pams.academic.studyplan.model.AdCourse;
import my.edu.umk.pams.academic.studyplan.model.AdFaculty;
import my.edu.umk.pams.academic.studyplan.service.StudyplanService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author PAMS
 */

@JGivenStage
public class ThenCoursesUpdated extends Stage<ThenCoursesUpdated> {

    @Autowired
    private StudyplanService studyplanService;

    @ExpectedScenarioState
    private AdFaculty faculty;

    @ExpectedScenarioState
    private AdCourse course;

    @Pending
    public ThenCoursesUpdated new_courses_information_updated() {


        return self();

    }

}
