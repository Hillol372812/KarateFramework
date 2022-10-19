Feature: Api with query parameter

  Scenario: validate query parameter
    * def query = {status : 'active',name : 'Opaline Dutta'}
    Given url baseUrl+'/public/v2/users'
    And params query
    When method GET
    Then status 200
    * print response

  Scenario: Validate response and count number of Objects
    * def query = {status: 'active'}
    Given url baseUrl+'/public/v2/users'
    And params query
    When method GET
    Then status 200
    * print "user List -> " + response
    * print "username List -> " + response[0].name
    * print "username2 List -> " + response[2].name
    * print "Number of user in the response -> " + response.length
    * print "all Id " + response.id
