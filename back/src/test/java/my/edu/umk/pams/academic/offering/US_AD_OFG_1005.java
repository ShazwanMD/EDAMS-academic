package my.edu.umk.pams.academic.offering;

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
import my.edu.umk.pams.academic.offering.stage.ThenTheSectionsHaveAppointedStaff;
import my.edu.umk.pams.academic.offering.stage.WhenIAppointStaffToSections;
import my.edu.umk.pams.bdd.stage.GivenIAmPPSAdministrator;

/**
 * @author asyikin.mr
 */
@RunWith(SpringJUnit4ClassRunner.class)
@Transactional
@ContextConfiguration(classes = TestAppConfiguration.class)

public class US_AD_OFG_1005 extends
		SpringScenarioTest<GivenIAmPPSAdministrator, WhenIAppointStaffToSections, ThenTheSectionsHaveAppointedStaff> {
	private static final Logger LOG = LoggerFactory.getLogger(US_AD_OFG_1005.class);
	public static final String PROGRAM_CODE = "FKP/PHD/0001";

	@Before
	public void before() {
	}

	@After
	public void after() {
	}

	@Test
	@Rollback(true)
	public void scenario1() {
		given().I_am_a_PPS_administrator_in_current_academic_session().and().I_pick_program_$(PROGRAM_CODE);
		when().I_appoint_staff_for_sections();
		then().the_sections_have_appointed_staff();
	}
}