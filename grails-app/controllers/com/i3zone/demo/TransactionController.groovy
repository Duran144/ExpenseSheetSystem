package com.i3zone.demo

class TransactionController {
    static scaffold = Transaction

    UserService _userService
    TransactionService _transactionService


    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond _transactionService.list(params), model:[transactionCount: _transactionService.count()]
    }



}
