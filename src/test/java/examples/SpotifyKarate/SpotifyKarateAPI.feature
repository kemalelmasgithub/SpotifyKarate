Feature: user Details
  
  Scenario: get call test
    * def expectedOutput = read('result.json')
    
    Given url 'https://regres.in/api/users/2'
    When method GET
    Then status 200
    Then print response
    And match response == expectedOutput
    And match response.data.id == 2
    And match response.data.last_name != null
