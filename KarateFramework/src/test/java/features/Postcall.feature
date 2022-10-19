Feature: Implement Post call in Karate


Background:
  * url baseUrl
  * def RequestPayload = 
  """
  
  {"name":"Amaresh Achari JD1","email":"achari_amaresh_jd41@lehner.biz","gender":"male","status":"active"},
  
  """
 
 Scenario: Validate POST call
  
* configure headers = {Authorization : "Bearer 1d2016f76c45478b2a8b0b8e69e0e82e80e65677ee91246b17f985b7779dcfd5"} 
Given path '/public/v2/users'
And request  RequestPayload
When method Post
Then status 201 
And match $.id == '#present'
And match $.name == 'Amaresh Achari JD1'

Scenario: Validate POST call when tokedID pass from config file and duplicate emailId
  
#* configure headers = {Authorization : "Bearer 1d2016f76c45478b2a8b0b8e69e0e82e80e65677ee91246b17f985b7779dcfd5"} 
Given path '/public/v2/users'
And request  RequestPayload
And header Authorization = tokenID
When method Post
Then status 422 


  