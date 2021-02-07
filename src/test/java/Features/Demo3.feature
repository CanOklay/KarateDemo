Feature: user details

  Background:
    * url 'https://jsonplaceholder.typicode.com'
    * header Accept = 'application/json'
    @GetScenario @TypicodeGet @Get
    Scenario: testing the exact response of a GET endpoint
    Given path 'users'

    When method get
    Then status 200
    #ADIM 1----------------------------
    Then assert response.length == 10
    #----------------------------------
    * def first = response[0]
    Given path 'users',first.id
    When method get
    Then status 200

    #ADIM 2----------------------------
    Then print first.name
    Then print fist.id
    #----------------------------------

    #ADIM 3----------------------------
    And match $.id == 1
    And match $.name == 'Leanne Graham'
    And match $ contains {id:1, name:'Leanne Graham'}
    And match $ contains {id: #notnull}
    #----------------------------------
