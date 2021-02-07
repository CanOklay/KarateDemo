Feature: user details

  Background:
    * url 'https://jsonplaceholder.typicode.com'
  @PostScenario @TypicodePost @Post
  Scenario: create a user then get it by id
    * def user =
    """
    {
    "name": "Can",
    "username": "yalkonac",
    "email": "canoklay@gmail.com",
    "address": {
      "street": "Şehit Cahit Gökalp",
      "suite": "Apt. 9",
      "city": "İstanbul",
      "zipcode": "34349",
      }
    }
    """
    Given path 'users'
    And request 'user'
    When method post
    Then status 201