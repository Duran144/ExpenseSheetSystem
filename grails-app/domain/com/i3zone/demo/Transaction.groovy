package com.i3zone.demo

class Transaction {
    Date dateCreated
    double amount
    double runningBalance = 0.0
    String description



    static belongsTo = [user: User]

    static constraints = {
    }
}
