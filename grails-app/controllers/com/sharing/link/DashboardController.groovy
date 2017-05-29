package com.sharing.link

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class DashboardController {

    def springSecurityService
    def topicService

    def index() {}

    def home() {

        User user = springSecurityService.currentUser
        session.currentUser = user


        if(params.allTopics == null || !params.allTopics instanceof List)
            params.allTopics = topicService.allTopics(user)
        /**
         * allresources pending
         */
        render(view: '/dashboard/dashboard',model: params)
    }
}
