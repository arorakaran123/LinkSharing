package com.sharing.link

import commandobjects.welcomepage.TopicCO
import grails.transaction.Transactional

@Transactional
class TopicService {

    def subscriptionService

    def saveTopic(TopicCO topicCO, User createdBy) {

        Topic topic = new Topic()
        topic.name = topicCO.name
        topic.visibility = topicCO.visibility.equalsIgnoreCase('public') ? Topic.Visibility._public : Topic.Visibility._private
        topic.createdBy = createdBy
        topic.save()
    }

    def createTopic(TopicCO topicCO,User user) {

        Topic topic = saveTopic(topicCO,user)
        subscriptionService.subscribeUser(user,topic,Subscription.Seriousness.casual)
    }

    def allTopics(User user) {

        List topics

        if (user.isAdmin) {
            topics = Topic.getAll()
        } else {
            topics = Topic.findAllByCreatedByOrVisibility(user, Topic.Visibility._public)
        }
        return topics

    }
}
