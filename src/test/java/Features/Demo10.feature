Feature:

  Scenario: write API response to txt
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
            return[i].email
          }
        }
      }
    """

    * def userEmail = call myFun data
    Then print 'userEmail------',userEmail

    * def JavaDemo = Java.type('Features.Functions')
    * def result = new JavaDemo().writeData(userEmail)
    # Data.txt içine API'den gelen response'dan id:9 olanın emailini alıp yazdırdık



