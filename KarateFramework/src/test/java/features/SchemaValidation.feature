Feature: Schema validation

Scenario: Schema validation

Given url baseUrl +'/public/v2/users'
And path '2527'
When method GET
Then status 200
* print "Response body ==> " + response
* def JRSP2 = response
* print 'EmailId ->  ' + JRSP2.email
* match JRSP2.email == 'khan_dandapaani_gov@fisher-barrows.info'
* def Requestbody = read('classpath:src/test/resources/Payloads/GetResponseSchema.json')
* print "Print Schema => " + Requestbody

* match response == Requestbody
