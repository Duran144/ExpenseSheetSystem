package com.i3zone.demo

class Expense {
    Date dateCreated
    double amount
    Double convertedAmount
    double runningBalance = 0.0
    String description

    static transients = ['runningBalance', 'convertedAmount']

    static belongsTo = [user: User]

    static constraints = {
    }
}
