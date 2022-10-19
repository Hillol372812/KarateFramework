Feature: Verify Post to Put flow

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

* def putrequestbody =
"""
{        
        "name": "Chitramala Embranthiri DDS Test",
        "email": "embranthiri_dds_chitramala12312@gmail.com",
        "gender": "male",
        "status": "active"
    }
"""

Scenario: create and update a user

Given url baseUrl
And path 'public/v2/users'
And header Authorization = tokenID
And request requestbody
When method POST
Then status 201

* print response

* def id = response.id

# implement put API

Given url baseUrl
 And path '/public/v2/users/'+id
 And header Authorization = tokenID
 And request putrequestbody
 When method PUT
 Then status 200