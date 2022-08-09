# ExpenseSheetSystem
A basic expense system that keeps track of all the transactions the user makes

## Table of Contents

- [Overview](#overview)
  - [Project Description](#projectdescription)
  - [Optimization](#optimization)
  
- [Requirements](#requirements) 
  - [Installation](#installation)
  - [Run app](#runapp)
  - [Run tests](#runtests)




## Overview

### Project Description
This is a very basic expense sheet system that tracks the users's expenses.
- Users can keep track of their expenses.
- The app allows users to export their expenses information to a CSV file.
- The app also has a currency converter feature.   


### Optimization 
Things to consider when 10k users are using the website.
- Add Authentication and Authorization
- Use a CDN
- Regularlyc reate backups of website


### Requirements

JDK 1.8 or greater installed with JAVA_HOME configured appropriately

### Installation

To get started do the following:

[Download](https://github.com/Duran144/ExpenseSheetSystem.git) and unzip the source

or

Clone the Git repository:

    git clone https://github.com/Duran144/ExpenseSheetSystem.git

## Run App
There are two ways to run the app

1. Run the App without Grails Installed
   ````
   $ ./grails run-app
2. Run the App with Grails
   ````
   $ grails run-app
### Test App
You can run your Grails tests using the test-app command:
````
$ ./grailsw test-app