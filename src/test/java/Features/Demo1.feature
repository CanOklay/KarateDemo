Feature: user details

  Background:
    * url 'https://jsonplaceholder.typicode.com'
  @GetScenario @TypicodeGet @Get
  Scenario: get call test
    Given path 'users'
    When method get
    Then status 200