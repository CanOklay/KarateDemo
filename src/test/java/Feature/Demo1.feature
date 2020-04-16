Feature: user details

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: get call test
    Given path 'users'
    When method get
    Then status 200