package my.edu.umk.pams.academic.term.stage;

/**
 * @author asyikin.mr and ZIANA
 */
import com.tngtech.jgiven.Stage;import com.tngtech.jgiven.annotation.ExpectedScenarioState;
import com.tngtech.jgiven.annotation.ProvidedScenarioState;
import com.tngtech.jgiven.integration.spring.JGivenStage;
import my.edu.umk.pams.academic.term.model.AdOffering;
import my.edu.umk.pams.academic.term.service.TermService;
import my.edu.umk.pams.academic.planner.model.AdAcademicSession;
import my.edu.umk.pams.academic.planner.model.AdProgram;
import my.edu.umk.pams.academic.planner.service.PlannerService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;
import java.util.List;

@JGivenStage
public class ThenOfferingMayHaveSection extends Stage<ThenOfferingMayHaveSection> {

	private static final Logger LOG = LoggerFactory.getLogger(ThenOfferingMayHaveSection.class);

	@Autowired
	private TermService termService;

	@Autowired
	private PlannerService plannerService;

	@ExpectedScenarioState
	private AdAcademicSession academicSession;

	@ProvidedScenarioState
	private AdProgram program;

	public ThenOfferingMayHaveSection the_offerings_may_begin_to_have_sections() {
		program = plannerService.findProgramByCode("MGSEB/MBA");

		List<AdOffering> offerings = termService.findOfferings(program);

		for (AdOffering offering : offerings) {

			LOG.debug("Listed code: {}", offering.getCanonicalCode());
			LOG.debug("Listed title: {}", offering.getTitle());

			boolean hasSection = termService.hasSection(academicSession, offering);
			Assert.isTrue(!hasSection, "Offering does not have section and ready to be setup");

		}

		return self();
	}
}
