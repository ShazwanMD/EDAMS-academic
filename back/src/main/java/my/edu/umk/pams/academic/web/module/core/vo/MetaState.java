package my.edu.umk.pams.academic.web.module.core.vo;

/**
 * @author PAMS
 */
public enum MetaState {

    INACTIVE, // 0
    ACTIVE;   // 1

    public static MetaState get(int index) {
        return values()[index];
    }

}
