Feature:

  Scenario: basic

    Given url 'https://reqres.in/api/users/2'
    When method get
    Then status 200
    Then print response