Feature: Java functions

  Scenario: Call function

    * def JavaDemo = Java.type('Features.Functions')

    * def result = new JavaDemo().callFunction()

  Scenario: Call function with argument

     * def JavaDemo = Java.type('Features.Functions')
     * def result = new JavaDemo().callWithArgument('Can')
     Then print result

  Scenario: Call functions with argument and write txt

    * def JavaDemo = Java.type('Features.Functions')
    * def result = new JavaDemo().writeData("Mehmet Ali Oklay")