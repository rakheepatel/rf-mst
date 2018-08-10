*** Settings ***
Documentation  This file contains all commonly shared keywords
Library  SeleniumLibrary
Library  OperatingSystem

*** Variables ***
${LOCAL}  file:///Users/ra/robotscripts/rf-mst/index.html  #Change path to match yours
${URL}  http://gigaplex.homeip.net/ra/index.html
${BROWSER}  headlesschrome

*** Keywords ***
Start Suite
    [Documentation]  These keywords will run when any test suite is started
    open browser  ${LOCAL}  ${BROWSER}
    set window size  800  600
    maximize browser window
    # Remove Files  Results*${/}selenium-screenshot*.png  #Uses the OS Library

End Suite
    [Documentation]  These keywords will run when any test suite is ended
    close all browsers

Assert home page
    [Documentation]  Checks that we are on the homepage
    ${current_url}=  get location
    Should Be Equal  ${LOCAL}  ${current_url}