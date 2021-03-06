package my.edu.umk.pams.academic.term;

/**
 * @author asyikin.mr
 */
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;
import com.tngtech.jgiven.annotation.As;
import com.tngtech.jgiven.integration.spring.SpringScenarioTest;
import my.edu.umk.pams.academic.config.TestAppConfiguration;
import my.edu.umk.pams.academic.term.stage.ThenOfferingsInfoIsCurrent;
import my.edu.umk.pams.academic.term.stage.WhenUpdateCourseOfferings;
import my.edu.umk.pams.bdd.stage.GivenIAmCPSAdministrator;
import my.edu.umk.pams.bdd.tags.Submodule;

@RunWith(SpringRunner.class)
@Transactional
@ContextConfiguration(classes = TestAppConfiguration.class)
@As("As an academic administrator and i pick faculty and program, I want to update course offerings for the program, so that the offerings info is current.")
@Submodule("Term")
public class US_AD_TRM_1015
		extends SpringScenarioTest<GivenIAmCPSAdministrator, WhenUpdateCourseOfferings, ThenOfferingsInfoIsCurrent> {
	private static final Logger LOG = LoggerFactory.getLogger(US_AD_TRM_1015.class);
	public static final String FACULTY_CODE = "A07";
	public static final String PROGRAM_CODE = "FIAT-MASTER-PBH";

	@Test
	@Rollback
	public void adminUpdateCourseOffering() {
		given().I_am_a_CPS_administrator_in_current_academic_session().and().I_pick_faculty_$(FACULTY_CODE).and()
				.I_pick_program_$(PROGRAM_CODE);
		when().I_update_course_offerings_for_the_program();
		then().the_offerings_info_is_current();
	}
}
