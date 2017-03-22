package my.edu.umk.pams.academic.offering.stage;

import com.tngtech.jgiven.Stage;
import com.tngtech.jgiven.annotation.ExpectedScenarioState;
import com.tngtech.jgiven.annotation.ProvidedScenarioState;
import com.tngtech.jgiven.integration.spring.JGivenStage;
import my.edu.umk.pams.academic.identity.model.AdStudent;
import my.edu.umk.pams.academic.offering.model.AdOffering;
import my.edu.umk.pams.academic.offering.service.OfferingService;
import my.edu.umk.pams.academic.studyplan.model.AdProgram;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@JGivenStage
public class WhenIWantToViewTheOfferedCoursesByAcademicSession
        extends Stage<WhenIWantToViewTheOfferedCoursesByAcademicSession> {

    private static final Logger LOG = LoggerFactory.getLogger(WhenIWantToViewTheOfferedCoursesByAcademicSession.class);

    @Autowired
    private OfferingService offeringService;

    @ExpectedScenarioState
    private AdProgram program;

    @ExpectedScenarioState
    private AdStudent student;

    @ProvidedScenarioState
    private List<AdOffering> offerings;

    public WhenIWantToViewTheOfferedCoursesByAcademicSession I_browse_the_offered_courses_by_program_I_picked() {
        // list all offering for program
        List<AdOffering> offerings = offeringService.findOfferings(program);
        return self();
    }
}
