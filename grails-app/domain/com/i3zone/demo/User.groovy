package com.i3zone.demo

class User {
    String name
    Double startingBalance

    static hasMany = [transaction: Transaction]

    static constraints = {
    }
}
