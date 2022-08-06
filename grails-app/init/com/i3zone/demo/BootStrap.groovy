package com.i3zone.demo

class BootStrap {

    def init = { servletContext ->
        def user = new User(name: 'Duran', startingBalance: 1000).save()

        def transaction = new Transaction(user: user, amount: 100, runningBalance: user.startingBalance).save()
    }

    def destroy = {
    }
}
