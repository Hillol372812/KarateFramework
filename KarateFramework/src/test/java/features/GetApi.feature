Feature: Validate get Api feature

Scenario:Validate status code

Given url 'https://gorest.co.in/public/v2/users'
And path '3146'
When method GET
Then status 200
* print response
* def Jsonresponse = response
* print 'ID -> '+ Jsonresponse.id
* print 'EmailId ->  ' + Jsonresponse.email
* match Jsonresponse.id == 3146 
* match Jsonresponse.id == 3146

Scenario: Validate Email_ID

Given url baseUrl +'/public/v2/users'
And path '2527'
When method GET
Then status 200
* print response
* def JRSP2 = response
* print 'EmailId ->  ' + JRSP2.email
* match JRSP2.email == 'khan_dandapaani_gov@fisher-barrows.info'

Scenario: Validate Schema

Given url baseUrl +'/public/v2/users'
And path '2527'
When method GET
Then status 200
* print response
* def JRSP2 = response
* print 'EmailId ->  ' + JRSP2.email
* match JRSP2.email == 'khan_dandapaani_gov@fisher-barrows.info'

