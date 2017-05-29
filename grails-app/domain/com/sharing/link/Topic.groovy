package com.sharing.link

class Topic {

    String name
    User createdBy
    Date dateCreated
    Date lastUpdated
    Visibility visibility

    static constraints = {
        name blank: false
        resources nullable: true
    }

    static mapping = {

    }

    static hasMany = [resources:Resource]

    enum Visibility{
        _public, _private
    }

    static transients = ['subscriptions','posts','seriousness']

    Integer getSubscriptions() {
        Subscription.countByTopic(this)
    }

    Integer getPosts() {
        Resource.countByTopic(this)
    }

    String getSeriousness() {
        Subscription.Seriousness seriousness = Subscription.findByTopicAndUser(this,createdBy).seriousness
        if(seriousness == Subscription.Seriousness.serious)
            return "Serious"
        if(seriousness == Subscription.Seriousness.very_serious)
            return "Very Serious"
        if(seriousness == Subscription.Seriousness.casual)
            return "Casual"

    }
}
