package my.edu.umk.pams.academic.planner;

import com.tngtech.jgiven.integration.spring.SpringScenarioTest;
import my.edu.umk.pams.academic.config.TestAppConfiguration;
import my.edu.umk.pams.academic.planner.stage.ThenIKnowProgramDetails;
import my.edu.umk.pams.academic.planner.stage.WhenIViewProgramFaculty;
import my.edu.umk.pams.bdd.stage.GivenIAmCPSAdministrator;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;


/**
 * As an admin academic,
 * I want to view program faculty,
 * so that I can know program details
 **/

@RunWith(SpringJUnit4ClassRunner.class)
@Transactional
@ContextConfiguration(classes = TestAppConfiguration.class)
public class US_AD_PNR_0004 extends SpringScenarioTest<GivenIAmCPSAdministrator, WhenIViewProgramFaculty, ThenIKnowProgramDetails> {

    private static final Logger LOG = LoggerFactory.getLogger(US_AD_PNR_0004.class);

    private static final String FACULTY_CODE = "FIAT";

    @Test
    @Rollback
    public void scenario0004() {
        given().I_am_a_CPS_administrator_in_current_academic_session()
                .I_pick_faculty_$(FACULTY_CODE);
        when().I_want_to_view_program_for_that_faculty_$();
        then().I_can_see_program_details();
    }
}
