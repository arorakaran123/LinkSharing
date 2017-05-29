package com.sharing.link

import commandobjects.welcomepage.ResourceCO
import org.springframework.security.access.annotation.Secured

@Secured('permitAll')
class ResourceController {

    def resourceService

    def save(ResourceCO resourceCO) {

        println '//////////////===========================called here//////////////////////////'
        resourceCO.validate()
        if (resourceCO.hasErrors()) {

            flash.error = 'Please provide all mandatory details'
            chain(controller: 'dashboard', action: 'home', params: [showCreateResourceDialog: true])
            return
        }

        User user = session.currentUser
        resourceService.createLinkResource(resourceCO, Topic.findByCreatedByAndName(user, resourceCO.topic), user)
        flash.success = 'Resource created successfully.'
        chain(controller: 'dashboard', action: 'home')
    }

    def allResources() {


        println params.topic

        List allRes = resourceService.allResources(params.topic,session.currentUser)
        println 'resources are - ' + allRes.toString()
        params.allResources = allRes
        chain(controller: 'dashboard', action: 'home', params: params)
    }
}
