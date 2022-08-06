package com.i3zone.demo

class UserController {
    static scaffold = User

    UserService _userService

    def index(Integer max)
    {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userCount: User.count()]
    }

}
