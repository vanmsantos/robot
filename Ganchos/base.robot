*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}                  https://training-wheels-protocol.herokuapp.com   


*** Keywords ***
New Session          Open Browser          ${url}/checkboxes              chrome 
Close Session        Close Browser 


