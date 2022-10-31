Feature: post create

Scenario: post create
    * def request_headers = {name :"morpheus", job :"leader"}
    Given headers request_headers
    Given url 'https://reqres.in/api/users'
    When method post
    Then status 201

