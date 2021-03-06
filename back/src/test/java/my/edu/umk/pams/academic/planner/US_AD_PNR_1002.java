package my.edu.umk.pams.academic.planner;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import com.tngtech.jgiven.annotation.ProvidedScenarioState;
import com.tngtech.jgiven.annotation.As;
import com.tngtech.jgiven.integration.spring.JGivenStage;
import com.tngtech.jgiven.integration.spring.SpringScenarioTest;

import my.edu.umk.pams.academic.config.TestAppConfiguration;
import my.edu.umk.pams.academic.planner.stage.ThenProgramUpdated;
import my.edu.umk.pams.academic.planner.stage.WhenAdminUpdateProgram;
import my.edu.umk.pams.bdd.stage.GivenIAmCPSAdministrator;
import my.edu.umk.pams.bdd.tags.Issue;
import my.edu.umk.pams.bdd.tags.Submodule;


@RunWith(SpringRunner.class)
@Transactional
@ContextConfiguration(classes = TestAppConfiguration.class)
@As("As an academic administrator, i want to update program for a faculty so that programmes is updated")
@Issue("PAMA-48")
@Submodule("Planner")

public class US_AD_PNR_1002
		extends SpringScenarioTest<GivenIAmCPSAdministrator, WhenAdminUpdateProgram, ThenProgramUpdated> {

	private static final Logger LOG = LoggerFactory.getLogger(US_AD_PNR_1002.class);
	public static final String FACULTY_CODE = "A01";

	private static final String PROGRAM_CODE = "FKP-MASTER-MAM";

	@Test
	@Rollback
	public void UpdateProgram() {
		given().I_am_a_CPS_administrator().I_pick_program_$(PROGRAM_CODE);
		when().Admin_update_program_$_for_faculty_$(PROGRAM_CODE,FACULTY_CODE);
		then().program_is_updated();
	}
}
