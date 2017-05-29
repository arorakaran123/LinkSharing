package commandobjects.welcomepage

import com.sharing.link.Resource
import grails.validation.Validateable
import org.spockframework.util.TextUtil
import org.springframework.security.web.util.TextEscapeUtils

/**
 * Created by karan on 29/5/17.
 */
@Validateable
class ResourceCO {

    String description
    String url
//    String filePath
    String topic

    static constraints = {
//        importFrom(Resource)
        topic nullable: true
        url validator: { val, obj ->

            if(val == null && obj.filePath == null)
                return 'Please provide resource'

        }

    }

}
