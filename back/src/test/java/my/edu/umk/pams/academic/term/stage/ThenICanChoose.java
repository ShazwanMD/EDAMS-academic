package my.edu.umk.pams.academic.term.stage;

import com.tngtech.jgiven.Stage;
import com.tngtech.jgiven.annotation.ExpectedScenarioState;
import com.tngtech.jgiven.integration.spring.JGivenStage;

import my.edu.umk.pams.academic.planner.model.AdProgram;
import my.edu.umk.pams.academic.term.model.AdOffering;
import my.edu.umk.pams.academic.term.model.AdSection;
import my.edu.umk.pams.academic.term.service.TermService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;

import java.util.List;

@JGivenStage
public class ThenICanChoose extends Stage<ThenICanChoose> {

    @Autowired
    private TermService termService;

    @ExpectedScenarioState
    private List<AdOffering> offerings;

    @ExpectedScenarioState
    private List<AdSection> sections;
    
    @ExpectedScenarioState
    private AdProgram program;

    private static final Logger LOG = LoggerFactory.getLogger(ThenICanChoose.class);

    public ThenICanChoose i_can_choose_which_section_to_enroll() {
    	
    	 offerings = termService.findOfferings(program);
         
         for (AdOffering offering : offerings) {
 			LOG.debug(offering.getTitle());
 			
 		 List<AdSection> sections = termService.findSections(offering);
 		 for (AdSection section1 : sections) {
             // check if section has exceeded capacity
             boolean exceededEnrollment = termService.hasExceededEnrollment(section1);
             Assert.isTrue(!exceededEnrollment, "Section is full");
         }
 		}
         
        
         return self();
    	
    	}
}
