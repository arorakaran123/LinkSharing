package commandobjects.welcomepage

import com.sharing.link.User
import grails.validation.Validateable

/**
 * Created by karan on 26/5/17.
 */
@Validateable
class LoginCO {
    String email
    String password

    static constraints = {
        email blank: false, nullable: false
        password blank: false, nullable: false
    }
}
