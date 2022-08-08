package com.i3zone.demo

import grails.config.Config
import grails.core.support.GrailsConfigurationAware
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ExpenseController implements GrailsConfigurationAware{

    ExpenseService expenseService
    UserService userService
    ConvertCurrencyService convertCurrencyService

    String csvMimeType
    String encoding

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond expenseService.list(params), model:[expenseCount: expenseService.count()]
    }

    def show(Long id) {
        respond expenseService.get(id)
    }

    def create() {
        respond new Expense(params)
    }

    def save(Expense expense) {
        if (expense == null) {
            notFound()
            return
        }

        try {
            expenseService.save(expense)
        } catch (ValidationException e) {
            respond expense.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'expense.label', default: 'Expense'), expense.id])
                redirect expense
            }
            '*' { respond expense, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond expenseService.get(id)
    }

    def update(Expense expense) {
        if (expense == null) {
            notFound()
            return
        }

        try {
            expenseService.save(expense)
        } catch (ValidationException e) {
            respond expense.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'expense.label', default: 'Expense'), expense.id])
                redirect expense
            }
            '*'{ respond expense, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        expenseService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'expense.label', default: 'Expense'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }


    def statement(Long id) {
        def user = getUserStatement(id)

        respond user
    }

    def exportCSV(Long id){

        // get current user's statement so their properties can be traversed through
        def user = getUserStatement(id)

        final String filename = 'statement.csv'

        // map user's expenses to a list for access to List methods
        def lines = user.expense.collect{[it.dateCreated, it.description, it.amount, it.convertedAmount,it.runningBalance].join(';')}as List<String>

        //
        def outs = response.outputStream


        response.status = OK.value()
        response.contentType = "${csvMimeType};charset=${encoding}"
        response.setHeader "Content-disposition", "attacthment; filename=${filename}"

        //
        lines.each{String line ->
            outs << "${line}\n"
        }

        outs.flush()
        outs.close()
    }

    // returns the selected user's expense statement
    protected getUserStatement(Long id){

        // return instance of current user
        def user = userService.get(id)

        // sets the user's expense balance to their initial balance
        def runningbalance = user.startingBalance

        // loops through each expense the user created
        for(expense in user.expense) {

            // updates the current expense's running balance
            expense.runningBalance = runningbalance - expense.amount

            // updates the user's running balance
            runningbalance = expense.runningBalance

            // convert expense amount to USD
            expense.convertedAmount = convertCurrencyService.convertZARToUSD(expense.amount)

        }

        return user
    }



    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'expense.label', default: 'Expense'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    @Override
    void setConfiguration(Config con){
        // set file type to csv
        csvMimeType = con.getProperty('grails.mime.types.csv', String, 'text/csv')

        // set csv files encoding to UTF-8
        encoding = con.getProperty('grails.converters.encoding', String, 'UTF-8')
    }
}
