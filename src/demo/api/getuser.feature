Feature: Get list user

Background:
    * url 'https://reqres.in/api/'

Scenario: get list user
    Given path 'users?page=2'
    When method get
    Then status 200
    And match $.page == 1
    #And match $.data.id == 1
  
Scenario: get one user
    Given path 'users/23'
    When method get
    Then status 404
