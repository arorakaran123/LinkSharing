package com.sharing.link

import commandobjects.welcomepage.TopicCO
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class TopicController {

    def topicService

    def create() {

        render(view: 'create')
    }

    def showTopics() {

        params.allTopics = topicService.allTopics(session.currentUser)
        render(view: 'showTopics', model: params)
    }

    def showPosts() {

        render(view: 'showPosts')
    }

    def save(TopicCO topicCO) {

        println 'name' + params.name
        println 'visibility' + params.visibility

        topicCO.validate()
        if (topicCO.hasErrors()) {

            flash.error = 'Please provide all mandatory details'
            chain(controller: 'dashboard', action: 'home', params: [showCreateTopicDialog: true])
            return
        }
        topicService.createTopic(topicCO, session.currentUser)
        flash.success = 'Topic created successfully.'
//        chain(controller: 'dashboard', action: 'home')

        println controllerName + ' - ' + actionName
        chain(controller: controllerName, action: actionName)
    }

    def save2() {
        println 'called save 2'
        render 'save 2 called using ajax'
    }
}
