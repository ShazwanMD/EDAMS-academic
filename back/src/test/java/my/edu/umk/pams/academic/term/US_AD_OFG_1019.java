package my.edu.umk.pams.academic.term;

/**
 * @author asyikin.mr and ziana
 */
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import com.tngtech.jgiven.integration.spring.SpringScenarioTest;
import my.edu.umk.pams.academic.config.TestAppConfiguration;
import my.edu.umk.pams.academic.term.stage.ThenTheEnrollmentCoursesIsUpdated;
import my.edu.umk.pams.academic.term.stage.WhenIWantToEnrollAdditionalOfferingCoursesToRepeatCourses;
import my.edu.umk.pams.bdd.stage.GivenIAmStudent;

@RunWith(SpringJUnit4ClassRunner.class)
@Transactional
@ContextConfiguration(classes = TestAppConfiguration.class)
public class US_AD_TRM_1020 extends
		SpringScenarioTest<GivenIAmStudent, WhenIWantToEnrollAdditionalOfferingCoursesToRepeatCourses, ThenTheEnrollmentCoursesIsUpdated> {
	private static final Logger LOG = LoggerFactory.getLogger(US_AD_TRM_1020.class);
	private static final String PROGRAM_CODE = "FKP/MASTER/0001";

	@Before
	public void before() {
	}

	@After
	public void after() {

	}

	@Test
	@Rollback(true)
	public void scenario01() {
		given().I_am_a_student_in_current_academic_session();
		when().I_want_to_enroll_additional_offering_courses_to_repeat_courses_for_program_$(PROGRAM_CODE);
		then().the_enrollment_courses_is_updated();

	}

}