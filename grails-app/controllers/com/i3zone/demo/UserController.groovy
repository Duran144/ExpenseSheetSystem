package com.i3zone.demo

class UserController {

    def index() { }

    def save(){
        def user = new User(params)
        user.save()
        render (view: "user", model: [user: user])
    }
}
