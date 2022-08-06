package com.i3zone.demo

class UserController {
    static scaffold = User

    def index() { }

    def save(){
        def user = new User(params)
        user.save()
        render (view: "user", model: [user: user])
    }
}
