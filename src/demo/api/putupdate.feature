Feature: put update

Scenario: put update
    * def request_headers = {name :"morpheus", job :"zion resident"}
    Given headers request_headers
    Given url 'https://reqres.in/api/users/2'
    When method put
    Then status 200
    #And match $.error == false
    #And match $.data.has_class == true
    
