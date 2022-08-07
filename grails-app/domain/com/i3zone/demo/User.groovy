package com.i3zone.demo

class User {
    String name
    Double startingBalance

    static hasMany = [expense: Expense]

    static constraints = {
    }
}
