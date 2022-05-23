*** Settings ***
Library    SeleniumLibrary

Test Setup        New Session
Test Teardown     Close Session

*** Variables ***
${url}                  https://training-wheels-protocol.herokuapp.com        
${checkthor}            id:thor
${checkironman}         css: #checkboxes > input[type=checkbox]:nth-child(3)
${checkblackpanter}     xpath://*[@id='checkboxes']/input[7]


*** Keywords ***
New Session          Open Browser          ${url}/checkboxes         chrome 
Close Session        Close Browser 


*** Test Cases ***
Validade option checkbox    
    Select Checkbox                 ${checkthor}
    Checkbox Should Be Selected     ${checkthor}
    Sleep                           5
  

Validade CSS  
    Select Checkbox                ${checkironman}
    Checkbox Should Be Selected    ${checkironman}
    Sleep                          5


Validade xpath    
    Select Checkbox                ${checkblackpanter}
    Checkbox Should Be Selected    ${checkblackpanter}
    Sleep                          5
       