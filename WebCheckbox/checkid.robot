*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${url}    https://training-wheels-protocol.herokuapp.com

*** Test Cases ***
Testing multi-checkbox
    Open Browser                   ${url}            chrome
    Go To                          ${url}/checkboxes
    Select Checkbox                id:thor 
    Checkbox Should Be Selected    id:thor
    Sleep                          5 
    Close Browser   

Testing checkbox com CSS Selector
    [Tags]        ironman
    Open Browser                    ${url}        chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 css:input[value='iron-man']
    Checkbox Should Be Selected     css:input[value='iron-man']
    Sleep                           5
    Close Browser
