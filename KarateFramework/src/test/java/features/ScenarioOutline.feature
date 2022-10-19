Feature: patterns for using cucumber scenario-outline and examples with karate

 
  Scenario Outline: Validate status code of <user>
    Given url 'https://gorest.co.in/public/v2/users'
    And path <user>
    When method GET
    Then status 200
    * print response
    * match response == <expected>

    Examples: 
      | user | expected                                                                                                      |
      | UserId | {"id": 2755,"name": "Gautam Mehra","email": "gautam_mehra@king-ledner.io","gender": "male","status": "inactive"} |
