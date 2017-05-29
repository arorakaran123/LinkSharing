package com.sharing.link

import com.sharing.link.Subscription.Seriousness
import grails.transaction.Transactional

@Transactional
class SubscriptionService {


    def subscribeUser(User user, Topic topic, Seriousness seriousness) {
        Subscription subscription = new Subscription()
        subscription.user = user
        subscription.topic = topic
        subscription.seriousness = seriousness
        subscription.save()
    }

}
