*** Settings ***
Library    SeleniumLibrary

Test Setup        
Test Teardown


*** Test Cases ***
Validade option checkbox
    Open Browser                    https://training-wheels-protocol.herokuapp.com/checkboxes    chrome
    Select Checkbox                 id:thor
    Checkbox Should Be Selected     id:thor
    Sleep                            5
    Close Browser 


Validade CSS
    Open Browser                   https://training-wheels-protocol.herokuapp.com/checkboxes        chrome
    Select Checkbox                css: #checkboxes > input[type=checkbox]:nth-child(3)
    Checkbox Should Be Selected    css: #checkboxes > input[type=checkbox]:nth-child(3)
    Sleep    5
    Close browser


Validade xpath
    Open Browser                   https://training-wheels-protocol.herokuapp.com/checkboxes        chrome
    Select Checkbox                xpath://*[@id='checkboxes']/input[7]
    Checkbox Should Be Selected    xpath://*[@id='checkboxes']/input[7]
    Sleep                          5
    Close Browser    

