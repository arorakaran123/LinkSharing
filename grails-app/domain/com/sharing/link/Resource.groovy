package com.sharing.link

class Resource {

    String description
    User createdBy
//    Topic topic
    Date dateCreated
    Date lastUpdated

    static transients = ['createdByUserName']
    static belongsTo = [topic:Topic]

    static constraints = {
        description blank: false
    }

    String getCreatedByUserName() {
        return createdBy.firstName +' '+ createdBy.lastName
    }
}
