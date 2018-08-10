*** Settings ***
Documentation  These file is a duplicate to demonstrate how parallel execution works
Resource  ../Resources/common.robot
Resource  ../Resources/alerts.robot
Resource  ../Resources/forms.robot
Suite Setup  Start Suite
Suite Teardown  End Suite
# robot -d Results-Se Tests/selenium.robot

*** Test Cases ***
Sample Test
    [Tags]  Smoke
    Assert home page
    
Test Alerts    
    Alert Text

Test Form
    [Tags]  Forms
    Form Asserts
    Fill Forms    