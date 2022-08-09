package com.i3zone.demo

import grails.testing.services.ServiceUnitTest
import spock.lang.Specification

class ConvertCurrencyServiceSpec extends Specification implements ServiceUnitTest<ConvertCurrencyService>{

    def setup() {
    }

    def cleanup() {
    }

    void ConvertCurrencyService() {
        given: 'a user'
            def user = new User(name: "Test", startingBankBalance: 100)
            def expense = new Expense(description: "water bill", amount: 10, user: user)

        when: 'convertCurrency is called'
            def convertedAmount = service.convertZARToUSD(expense.amount)

        then: 'a USD equivalent must be returned'
            assert convertedAmount > 0.0
    }
}
