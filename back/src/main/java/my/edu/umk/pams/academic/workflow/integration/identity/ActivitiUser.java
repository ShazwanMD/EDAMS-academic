package my.edu.umk.pams.academic.workflow.integration.identity;

import my.edu.umk.pams.academic.identity.model.AdUser;
import org.activiti.engine.impl.persistence.entity.UserEntity;

/**
 * @author canang technologies
 * @since 1/19/14
 */
public class ActivitiUser extends UserEntity {

    private AdUser user;

    public ActivitiUser(AdUser user) {
        this.user = user;
    }

    @Override
    public String getId() {
        return user.getUsername();
    }

    @Override
    public void setId(String s) {
        throw new UnsupportedOperationException();
    }

    @Override
    public String getFirstName() {
        return user.getUsername();
    }

    @Override
    public void setFirstName(String s) {
        throw new UnsupportedOperationException();
    }

    @Override
    public String getLastName() {
        return user.getUsername();
    }

    @Override
    public void setLastName(String s) {
        throw new UnsupportedOperationException();
    }

    @Override
    public String getEmail() {
        return user.getUsername();
    }

    @Override
    public void setEmail(String s) {
        throw new UnsupportedOperationException();
    }

    @Override
    public String getPassword() {
        return user.getPassword();
    }

    @Override
    public void setPassword(String s) {
        throw new UnsupportedOperationException();
    }
}
