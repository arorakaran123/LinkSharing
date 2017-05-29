package com.sharing.link

import commandobjects.welcomepage.ResourceCO
import grails.transaction.Transactional

@Transactional
class ResourceService {

    def createLinkResource(ResourceCO resourceCO, Topic topic, User user) {

        LinkResource resource = new LinkResource()
        resource.topic = topic
        resource.url = resourceCO.url
        resource.createdBy = user
        resource.description = resourceCO.description
//        resource.save()
        topic.addToResources(resource)
        topic.save(failOnError: true)
    }

    def allResources(String topicName, User user) {
        Topic topic = Topic.findByNameAndCreatedBy(topicName, user)
        return Resource.findAllByTopic(topic)
    }
}
