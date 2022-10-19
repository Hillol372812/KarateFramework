Feature: verify putcall
 
 Background: 
 
 * def putpayload =
 
 """
 {
	 "name"  : "TestName",
   "status" : "inactive"
  }
  """
 Scenario: update status & name using put method  
  
 Given url baseUrl
 And path '/public/v2/users/2723'
 And header Authorization = tokenID
 And request putpayload
 When method PUT
 Then status 200
 
 * print response
