package my.edu.umk.pams.academic.planner.stage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;
import com.tngtech.jgiven.Stage;
import com.tngtech.jgiven.annotation.ExpectedScenarioState;
import com.tngtech.jgiven.integration.spring.JGivenStage;
import my.edu.umk.pams.academic.planner.model.AdProgramLevel;
import my.edu.umk.pams.academic.planner.service.PlannerService;

@JGivenStage
public class ThenProgramLevelUpdated extends Stage<ThenProgramLevelUpdated> {

	
	private static final Logger LOG = LoggerFactory.getLogger(ThenProgramLevelUpdated.class);
	
	@Autowired
	private PlannerService plannerService;

	@ExpectedScenarioState
    private AdProgramLevel programLevel;
	
	public ThenProgramLevelUpdated program_level_is_updated(String code) {


    	AdProgramLevel exists = plannerService.findProgramLevelByCode(code);
    	 Assert.notNull(exists, "existss");
		
		
    	
		return self();
		
	}

}
