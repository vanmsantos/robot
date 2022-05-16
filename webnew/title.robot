*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Validate the title of the web page
    Open Browser            https://training-wheels-protocol.herokuapp.com/        chrome
    Title Should Be         Training Wheels Protocol  
    Close Browser