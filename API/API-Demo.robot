*** Settings ***
Documentation    This is a demo for Robot Framework REST API testing capabilities 
Library    REST    https://jsonplaceholder.typicode.com
#Test setup      Set expectations
Test teardown   Clear expectations
#robot API-Demo.robot 


*** Variables ***
${json}         { "id": 11, "name": "Alexander the Great" }
&{dict}         name=Julie Langford


*** Keywords ***
Set expectations
    Expect response                 ${CURDIR}/schemas/validresponse.json
    
*** Test Cases ***

GET an existing user
    GET         /users/1                  # this creates a new instance
    Object      response body
    Integer     response status           200
    Integer     response body id          1
    String      response body name        Leanne Graham   # quotes optional
    [Teardown]  Output                    # the current instance

PATCH with valid params, use response further as a new payload
    &{res}=     GET   /users/3
    String      $.name                    Clementine Bauch
    PATCH       /users/4                  { "name": "${res.body['name']}" }
    String      $.name                    Clementine Bauch
    PATCH       /users/5                  ${dict}
    String      $.name                    ${dict.name}
#Contract testing using REST library 
 
GET to existing
    Set expectations
    GET         /users/1


GET to non-existing
    
    [Setup]     Expect response     ${CURDIR}/schemas/invalidresponse.json
    GET         /users/404
            
       
       
       