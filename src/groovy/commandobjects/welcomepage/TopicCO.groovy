package commandobjects.welcomepage

import com.sharing.link.Topic
import grails.validation.Validateable

/**
 * Created by karan on 28/5/17.
 */
@Validateable
class TopicCO {
    String name
    String visibility

    static constraints ={
        importFrom(Topic)
    }
}
