package commandobjects.welcomepage

import com.sharing.link.User
import grails.validation.Validateable

/**
 * Created by karan on 25/5/17.
 */
@Validateable
class RegisterCO {

    String fName
    String lName
    String email
    String userName
    String password
    String confirmPassword
    String imagePath

    static constraints = {
        importFrom(User)
        fName blank: false
        lName blank: false
        userName blank: false
        imagePath nullable: true
        confirmPassword nullable: false, validator: { confirmPassword, registerCO ->
            if(confirmPassword != registerCO.password)
                return 'grails.RegisterCO.confirmPassword.error'
        }
    }
}
