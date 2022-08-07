package com.i3zone.demo

class Expense {
    Date dateCreated
    double amount
    double runningBalance = 0.0
    String description

    static transients = ['runningBalance']

    static belongsTo = [user: User]

    static constraints = {
    }
}
