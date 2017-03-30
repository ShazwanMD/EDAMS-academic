package my.edu.umk.pams.academic.web.module.identity.vo;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;

/**
 * @author PAMS
 */
public class Staff extends Actor {


    @JsonCreator
    public static Staff create(String jsonString) {
        Staff o = null;
        try {
            ObjectMapper mapper = new ObjectMapper();
            o = mapper.readValue(jsonString, Staff.class);
        } catch (IOException e) {
            // handle
        }
        return o;
    }

}
