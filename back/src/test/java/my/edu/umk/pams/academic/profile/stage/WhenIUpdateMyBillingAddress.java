package my.edu.umk.pams.academic.profile.stage;

import com.tngtech.jgiven.Stage;
import com.tngtech.jgiven.annotation.ExpectedScenarioState;
import com.tngtech.jgiven.integration.spring.JGivenStage;
import my.edu.umk.pams.academic.common.service.CommonService;
import my.edu.umk.pams.academic.identity.dao.AdStudentDao;
import my.edu.umk.pams.academic.identity.model.AdAddressImpl;
import my.edu.umk.pams.academic.identity.model.AdAddressType;
import my.edu.umk.pams.academic.identity.model.AdStudent;
import my.edu.umk.pams.academic.profile.service.ProfileService;
import my.edu.umk.pams.academic.security.service.SecurityService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author PAMS
 */
@JGivenStage
public class WhenIUpdateMyBillingAddress extends Stage<WhenIUpdateMyBillingAddress> {

    @Autowired
    private ProfileService profileService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private CommonService commonService;

    @Autowired
    private AdStudentDao studentDao;

    @ExpectedScenarioState
    AdStudent student;

    public WhenIUpdateMyBillingAddress I_update_my_billing_address() {
        AdAddressImpl address = new AdAddressImpl();
        address.setType(AdAddressType.BILLING);
        address.setAddress1("Jalan Rumah");
        address.setAddress2("Bestari Jaya");
        address.setCountryCode(commonService.findCountryCodeByCode("Selangor"));
        profileService.updateAddress(student, address);

        return self();
    }
}
