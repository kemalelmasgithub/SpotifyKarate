Feature: Education

  Scenario: Get request
    Given url 'https://petstore.swagger.io/v2'
    And path '/store/inventory'
    When method GET

    Scenario: Query Parameter
      Given url 'https://petstore.swagger.io/v2'
      And path '/pet/findByStatus'
      And param status = 'pending'
      When method GET


      Scenario: Def operation and Post
        * def requestBody =
        """
        {
  "id": 0,
  "category": {
    "id": 0,
    "name": "string"
  },
  "name": "doggie",
  "photoUrls": [
    "string"
  ],
  "tags": [
    {
      "id": 0,
      "name": "string"
    }
  ],
  "status": "available"
}
        """
        Given url 'https://petstore.swagger.io/v2'
        And path '/pet'
        And request requestBody
        When method POST








    

