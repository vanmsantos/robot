*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${url}            https://training-wheels-protocol.herokuapp.com
${checkthor}      id:thor
${checkiron}      css:input[value='iron-man'] 
${checkpanther}   xpath://*[@id='checkboxes']/input[7] 


*** Test Cases ***
Testing multi-checkbox
    Open Browser                   ${url}            chrome
    Go To                          ${url}/checkboxes
    Select Checkbox                ${checkthor}
    Checkbox Should Be Selected    ${checkthor}
    Sleep                          5 
    Close Browser   

Testing checkbox com CSS Selector
    Open Browser                    ${url}        chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${checkiron}  
    Checkbox Should Be Selected     ${checkiron}  
    Sleep                           5
    Close Browser

Testing checkbox com Xpath
      [Tags]            ironman
    Open Browser                    ${url}        chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${checkpanther}
    Checkbox Should Be Selected     ${checkpanther}
    Sleep                           5
    Close Browser

