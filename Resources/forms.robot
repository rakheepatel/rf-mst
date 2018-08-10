*** Settings ***
Documentation  This file contains keywords related to Forms
Library  SeleniumLibrary

*** Variable ***
${prompt_cat}  Clawy

*** Keywords ***
Form Asserts
    execute javascript  document.getElementById('first_name').scrollIntoView()    #Scrolls to element just so we can see the magic happen
    textarea should contain  message  cat
    textarea value should be  message  The cat was playing in the garden.
    textfield should contain  first_name  Jane-Anne
    textfield value should be  first_name  Jane-Anne O'Doe
    element should be disabled  //input[@disabled="disabled"]
    element should be enabled  //input[@name="emptytext"]
    list selection should be  Breeds List
    list should have no selections  Breeds List

Fill Forms
    click element  css=[name="prefilled"]
    clear element text  css=[name="prefilled"]
    input text  id=first_name  ${prompt_cat}
    select checkbox  absolutely
    unselect checkbox  love
    @{ListItems}=  get list items  //select[@name="Breeds"]
    select from list  //select[@name="Breeds List"]  Norwegian Forest Cat
    ${list_label}=  get selected list label  //select[@name="Breeds List"]
    ${list_value}=  get selected list value  //select[@name="Breeds List"]
    select from list by index  //select[@name="Breeds List"]  1
    select from list by label  //select[@name="Breeds List"]  Maine Coon
    select from list by value  //select[@name="Breeds List"]  Other
    ${list_labels}=  get selected list labels  //select[@name="Breeds List"]
    ${list_values}=  get selected list values  //select[@name="Breeds List"]
    unselect from list  //select[@name="Breeds List"]  Norwegian Forest Cat
    unselect from list by index  //select[@name="Breeds List"]  1
    unselect from list by label  //select[@name="Breeds List"]  Maine Coon
    unselect from list by value  //select[@name="Breeds List"]  Other
    select all from list  //select[@name="Breeds List"]