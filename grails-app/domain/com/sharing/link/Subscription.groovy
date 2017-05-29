package com.sharing.link

class Subscription {

    Topic topic
    User user
    Seriousness seriousness
    Date dateCreated

    static constraints = {
    }

    enum Seriousness {
        serious,very_serious,casual
    }
}
