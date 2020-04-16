Feature: user Details
  Scenario: create a user
    * def user =
    """
    {
      "name": "can",
      "job": "engineer"
    }
    """
    Given url 'https://reqres.in/api/users'
    And request user
    When method post
    Then status 201