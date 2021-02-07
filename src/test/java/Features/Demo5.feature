Feature: user detail

  Background:
    * url 'https://jsonplaceholder.typicode.com'

    Scenario:get all users and then get the first user by id
      Given path 'users/1'
      When method get
      Then status 200

      * def JsonResponse = read('Users.json')
      
      Then print JsonResponse

      And match response == JsonResponse
      And match response.id == 1
      And match response.address.street == 'Kulas Light'
      And match response.address.geo.lat == '-37.3159'