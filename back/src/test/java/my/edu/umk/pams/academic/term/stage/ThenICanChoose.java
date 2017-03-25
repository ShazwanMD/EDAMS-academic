package my.edu.umk.pams.academic.term.stage;

import com.tngtech.jgiven.Stage;
import com.tngtech.jgiven.annotation.ExpectedScenarioState;
import com.tngtech.jgiven.integration.spring.JGivenStage;
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
    private AdOffering offering;

    @ExpectedScenarioState
    private List<AdSection> sections;

    private static final Logger LOG = LoggerFactory.getLogger(ThenICanChoose.class);

    public ThenICanChoose i_can_choose_which_section_to_enroll() {
        // iterate thru expected offerings
        // try to find section to enroll
        for (AdSection section : sections) {
            // check if section has exceeded capacity
            boolean exceededEnrollment = termService.hasExceededEnrollment(section);
            Assert.isTrue(!exceededEnrollment, "Section is full");
        }
        return self();
    }
}