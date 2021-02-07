Feature: user Details
  @PostScenario @TypicodePost @Post
  Scenario: create a user
    * def user =
    """
    {
      "name": "berk",
      "job": "engineer"
    }
    """
    Given url 'https://reqres.in/api/users'
    And request user
    When method post
    Then status 201