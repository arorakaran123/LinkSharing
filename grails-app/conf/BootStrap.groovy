import com.sharing.link.Role
import com.sharing.link.Topic
import com.sharing.link.User
import com.sharing.link.UserRole

class BootStrap {

    def init = { servletContext ->

        if (!Role.getCount()) {


            Role roleAdmin = new Role(authority: 'ROLE_ADMIN').save(flush: true)
            Role roleUser = new Role(authority: 'ROLE_USER').save(flush: true)
            /**
             * Save a user with role ROLE_ADMIN
             */
            User user = new User()
            user.firstName = 'Karan'
            user.lastName = 'Arora'
            user.username = 'admin'
            user.email = 'karanarora.20july@gmail.com'
            user.password = 'admin'
            user.isAdmin = true
            user.isActive = true
            user.save(flush: true)

//            UserRole userRole = new UserRole();
//            userRole.user = user
//            userRole.role = roleAdmin
//            userRole.save(flush: true)
            UserRole.create(user,roleAdmin,true)

            /**
             * Save a user with role ROLE_USER
             */

            User user2 = new User()
            user2.firstName = 'Demo'
            user2.lastName = 'User'
            user2.username = 'demo'
            user2.email = 'demo@gmail.com'
            user2.password = 'demo'
            user2.isAdmin = false
            user2.isActive = true
            user2.save(flush: true)

//            UserRole userRole2 = new UserRole();
//            userRole2.user = user2
//            userRole2.role = roleUser
//            userRole2.save(flush: true)
            UserRole.create(user2,roleUser,true)
        }

        Topic topic = new Topic(name: 'temporary topic', visibility: Topic.Visibility._public)
        topic.save(flush: true)
    }
    def destroy = {

    }
}
