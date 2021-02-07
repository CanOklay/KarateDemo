Feature:

  Background:

    #Burada çağırıyoruz
    * def result = call read('Basic.feature')

    Scenario:
      Then print 'result------', result
      * def first_name = result.response.data.first_name
      Then print 'first_name-------', first_name