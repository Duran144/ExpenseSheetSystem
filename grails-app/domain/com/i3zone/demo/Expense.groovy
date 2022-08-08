package com.i3zone.demo

class Expense {
    Date dateCreated
    Double amount
    Double convertedAmount
    Double runningBalance = 0.0
    String description

    static transients = ['runningBalance', 'convertedAmount']

    static belongsTo = [user: User]

    static constraints = {
        description blank: false
        amount blank: false
    }

    String toString() {
        return description+" - "+amount
    }
}
