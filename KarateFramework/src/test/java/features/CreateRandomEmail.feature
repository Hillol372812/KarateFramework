Feature: Create random emailId and create a new user



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

* def string = Randomstring(4)

* print "Value of String -> " + string

* def requestbody =
"""
{"name":"Amaresh Achari JD","gender":"male","status":"active"},
"""

* requestbody.email= string + '@gmail.com'

* print "request body -> " + requestbody

@Test
Scenario: Create user

Given url baseUrl
And path '/public/v2/users'
And header Authorization = tokenID
And request requestbody
When method POST
Then status 201

* print response

