package com.sharing.link

import commandobjects.welcomepage.LoginCO
import commandobjects.welcomepage.RegisterCO
import grails.transaction.Transactional

@Transactional
class LoginService {

    def register(User user,RegisterCO registerCO) {

        user.firstName = registerCO.fName
        user.lastName = registerCO.lName
        user.username = registerCO.userName
        user.isAdmin = false
        user.isActive = true
        user.save()
        Role role = Role.findByAuthority('ROLE_ADMIN')
        UserRole userRole = UserRole.findByRole(role)
        userRole.create(user,role)
    }

    def login(LoginCO loginCO) {
        User user = User.findByUsernameOrEmail(loginCO.email,loginCO.email)
        if (user != null && user.password == loginCO.password)
            return true
        return false
    }
}
