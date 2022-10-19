Feature: Pass header in request body

Scenario: Pass header as simple method

* def query = {status : 'active'}
Given header accept = 'application/json'
When url baseUrl+'/public/v2/users'
And params query
When method GET
Then status 200

* print "Response with header -> "+ response

Scenario: Pass header as a query parameter

* def query = {status : 'active'}

* def headers_Param = {accept : 'application/json'}
Given headers headers_Param
When url baseUrl+'/public/v2/users'
And params query
When method GET
Then status 200

Scenario: Pass Header as config

* configure headers = {accept : 'application/json'}
* def query = {status : 'active'}
Given url baseUrl+'/public/v2/users'
And params query
When method GET
Then status 200
* print "configure header response ->" + response













Scenario: Validate response and count number of Objects

* def query = {status: 'active'}

Given url baseUrl+'/public/v2/users'
And params query
When method GET
Then status 200