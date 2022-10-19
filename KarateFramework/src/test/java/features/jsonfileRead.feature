Feature: Read json file from classpath

Background:

* def Randomstring =
"""
function(length)
{
 var result           = '';
    var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    var charactersLength = characters.length;
    for ( var i = 0; i < length; i++ ) {
      result += characters.charAt(Math.floor(Math.random() * 
 charactersLength));
   }
   return result;
}

"""

* def randomdata = Randomstring(4)

* print "Value of String -> " + randomdata


* def Requestbody = *('classpath:src/test/resources/Payloads/user.json')
* Requestbody.email = randomdata  + "@gmail.com"

* print "Requestbody ==>" + Requestbody

Scenario: create user passing json file

Given url baseUrl
And path '/public/v2/users'
And header Authorization = tokenID
And request Requestbody
When method POST
Then status 201
And match $.email == Requestbody.email
* print response
