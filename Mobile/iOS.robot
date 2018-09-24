*** Settings ***

Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}          http://localhost:4723/wd/hub                             # URL to appium server
${PLATFORM_NAME}       iOS
${PLATFORM_VERSION}    10.3
${DEVICE_NAME}         iPhone Simulator
${BUNDLE_ID}           com.facebook.WebDriverAgentRunner-RFTest1
${URL}                 http://www.seleniumframework.com/Practiceform/
${ANSWER_BUTTON}       id=button1
${EXPECTED_STYLE}      xpath = //button[contains(@style, "rgb(127, 255, 0")]

*** Keywords ***
Open App
    Open Application    ${REMOTE_URL}                platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}
    ...                 deviceName=${DEVICE_NAME}    automationName=appium            bundleId=com.apple.Maps
     
Set Up And Open Safari
    Open Application    ${REMOTE_URL}                      platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}
    ...                 deviceName=${DEVICE_NAME}                        automationName=XCUITest
    ...                 bundleId=com.apple.mobilesafari
#browserName=Safari 

Validate Style
        Wait Until Page Contains Element    ${EXPECTED_STYLE}    5s

Close All Apps
     Close Application


*** Test Cases ***
Test_Demo_Browser
    [Tags]     browser
    Set Up And Open Safari
    Go To Url                           ${URL}
    Wait Until Page Contains             ${ANSWER_BUTTON} 
    Click Element                       ${ANSWER_BUTTON}
    #Validate Style
    
Test_Demo_App
    [Tags]    app
    Open App
    #Page Should Contain Element        //XCUIElementTypeButton[@name="Allow"]
    #Click Element                      //XCUIElementTypeButton[@name="Allow"]
    Page Should Contain Element         //XCUIElementTypeSearchField[@name="Search for a place or address"]
    Click Element                       //XCUIElementTypeSearchField[@name="Search for a place or address"]
    Input Value                         //XCUIElementTypeSearchField[@name="Search for a place or address"]    State Library of Victoria
    Wait Until Page Contains Element    //XCUIElementTypeStaticText[@name="State Library of Victoria"]
    Tap                                 //XCUIElementTypeStaticText[@name="State Library of Victoria"]
    #Close All Apps
    
    
    
    
    
    
    
        
    
    