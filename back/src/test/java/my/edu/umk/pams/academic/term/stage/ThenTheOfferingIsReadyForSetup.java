package my.edu.umk.pams.academic.term.stage;

import com.tngtech.jgiven.Stage;
import com.tngtech.jgiven.annotation.ExpectedScenarioState;
import com.tngtech.jgiven.integration.spring.JGivenStage;
import my.edu.umk.pams.academic.term.model.AdOffering;
import my.edu.umk.pams.academic.term.service.TermService;
import my.edu.umk.pams.academic.studyplan.model.AdAcademicSession;
import my.edu.umk.pams.academic.studyplan.model.AdProgram;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;

import java.util.List;

/**
 * @author asyikin.mr@umk and ziana
 */
@JGivenStage
public class ThenTheOfferingIsReadyForSetup extends Stage<ThenTheOfferingIsReadyForSetup> {

    private static final Logger LOG = LoggerFactory.getLogger(ThenTheOfferingIsReadyForSetup.class);

    @Autowired
    private TermService termService;

    @ExpectedScenarioState
    private AdAcademicSession academicSession;

    @ExpectedScenarioState
    private AdProgram program;

    public ThenTheOfferingIsReadyForSetup the_offering_is_ready_for_setup() {
        List<AdOffering> offerings = termService.findOfferings(program);
        for (AdOffering offering : offerings) {
            boolean hasSection = termService.hasSection(academicSession, offering);
            Assert.isTrue(!hasSection, "Offering does not have section and ready to be setup");
        }
        return self();
    }
}