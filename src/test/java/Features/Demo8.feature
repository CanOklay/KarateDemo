Feature:

  Scenario:
    Given url 'https://reqres.in/api/users?page=2'
    When method get
    Then status 200
    Then print response
    * def data = response.data
    Then print 'data------',data

    * def myFun =
      """
        function(arg){
          for(i=0; i<arg.length; i++) {
            if(arg[i].id == 9) {
              return[i]
            }
          }
        }
      """

    * def userDetails = call myFun data
    Then print 'userDetails------',userDetails



