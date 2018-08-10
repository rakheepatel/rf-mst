*** Settings ***
Documentation  This file contains keywords related to Alerts
Library  SeleniumLibrary

*** Keywords ***
Alert Text
    click button  Click Me!
    sleep  4s
    alert should be present  Hehe click bait!
    double click element  id=dblClick
    sleep  4s
    dismiss alert