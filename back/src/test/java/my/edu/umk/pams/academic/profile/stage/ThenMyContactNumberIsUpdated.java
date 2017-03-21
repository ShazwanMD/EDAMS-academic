package my.edu.umk.pams.academic.profile.stage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;

import com.tngtech.jgiven.Stage;
import com.tngtech.jgiven.annotation.ExpectedScenarioState;
import com.tngtech.jgiven.integration.spring.JGivenStage;

import my.edu.umk.pams.academic.identity.model.AdActor;
import my.edu.umk.pams.academic.identity.service.IdentityService;

@JGivenStage
public class ThenMyContactNumberIsUpdated extends Stage<ThenMyContactNumberIsUpdated>  {
	
	@Autowired
	private IdentityService identityService;
	
	@ExpectedScenarioState
	private AdActor actor;
	
	@ExpectedScenarioState
	private String identityNo;
	
	public ThenMyContactNumberIsUpdated my_contact_number_is_updated() {

		AdActor actor = identityService.findActorByIdentityNo(identityNo);
		Assert.notNull(actor, "and current");
		
		return self();

	}

}
