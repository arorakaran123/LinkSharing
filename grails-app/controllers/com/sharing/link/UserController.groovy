package com.sharing.link

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN,ROLE_USER'])
class UserController {

    @Secured(['ROLE_ADMIN,ROLE_USER'])
    def showProfile() {

    }

    @Secured(['ROLE_ADMIN'])
    def showUsers() {

    }
}
